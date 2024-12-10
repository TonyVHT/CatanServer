using CatanService.DataTransferObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Helpers;
using CatanDataAccess.Domain;
using System.Security.Cryptography;
using System.Data.Entity;
using CatanDataAccess.Repositories;
using Serilog;
using System.ServiceModel;
using CatanService.EndPoint;
using System.Collections.Concurrent;
using CatanService.EndPoint.GameEndPoints.GameModels;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.DataTransferObject.PlayerDtos;
using System.Threading;
using System.Reflection;
using CatanService.DataTransferObject.GamePlayDto;
using CatanService.DataTransferObject.GamePlayDto.Board;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.Helpers;
using CatanService.DataTransferObject.GamePlayDto.Resources;
using System.Data.Common;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using Twilio.Base;
using Microsoft.IdentityModel.Tokens;
using CatanDataAccess.Contexts;
using CatanDataAccess.Repositories.ProfileGameRepositories;
using CatanDataAccess.Repositories.ProfileRepositories;

namespace CatanService.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public class GameService : IGameService
    {
        private readonly IRepositoryManager repositoryManager;
        private readonly IServiceManager serviceManager;
        private readonly ConcurrentDictionary<int, int> gameCurrentTurns = new ConcurrentDictionary<int, int>();
        private readonly ConcurrentDictionary<int, GameBoardStateDto> gameBoardStates = new ConcurrentDictionary<int, GameBoardStateDto>();
        private readonly Dictionary<int, Dictionary<int, PlayerResourcesDto>> gamePlayerResources = new Dictionary<int, Dictionary<int, PlayerResourcesDto>>();
        private readonly ConcurrentDictionary<int, int> gameCountdownToStartGame = new ConcurrentDictionary<int, int>();
        private readonly ConcurrentDictionary<int, ConcurrentBag<ConnectedPlayer>> connectedPlayersByGame = new ConcurrentDictionary<int, ConcurrentBag<ConnectedPlayer>>();
        private readonly ConcurrentDictionary<int, CancellationTokenSource> cancelTokenCountDownGame = new ConcurrentDictionary<int, CancellationTokenSource>();
        private readonly ConcurrentDictionary<int, CancellationTokenSource> cancelTokenTurnCountDown = new ConcurrentDictionary<int, CancellationTokenSource>();
        private readonly ConcurrentDictionary<int, CancellationTokenSource> cancelTokenEliminatePlayersInGame = new ConcurrentDictionary<int, CancellationTokenSource>();
        private readonly Dictionary<int, CancellationTokenSource> cancelTokenEliminatePlayersInPreGame = new Dictionary<int, CancellationTokenSource>();
        private static readonly SemaphoreSlim semaphoreScoreWorld = new SemaphoreSlim(GameUtilities.NUMBER_OF_TASK_PARALELISM, GameUtilities.NUMBER_OF_TASKS_CONCURRENCY);
        private static readonly SemaphoreSlim semaphoreScoreFriend = new SemaphoreSlim(GameUtilities.NUMBER_OF_TASK_PARALELISM, GameUtilities.NUMBER_OF_TASKS_CONCURRENCY);



        public GameService(IRepositoryManager repositoryManager, IServiceManager serviceManager)
        {
            this.repositoryManager = repositoryManager;
            this.serviceManager = serviceManager;
        }

        public async Task<OperationResultGameDto> CreateNewGameInDataBaseAsync(GameDto gameClientDto, ProfileDto profileClientDto, IGameCallback playerCallback)
        {
            using (DbContextTransaction gameTransaction = await repositoryManager.StartTransactionAsync())
            {
                try
                {
                    Game gameRecord = await CreateNewRecordGameAsync(profileClientDto, gameClientDto);

                    if (playerCallback != null && ((ICommunicationObject)playerCallback).State == CommunicationState.Opened)
                    {
                        ConnectedPlayer newPlayer = new ConnectedPlayer(profileClientDto, playerCallback);
                        SetConnectedPlayerList(newPlayer, gameRecord);
                        await HandleRelationEntityGameAsync(gameRecord, profileClientDto);
                        await repositoryManager.SaveAsync();
                        gameTransaction.Commit();

                        CancellationTokenSource cancellationTokenToUpdatePlayers = new CancellationTokenSource();
                        cancelTokenEliminatePlayersInPreGame[gameRecord.Id] = cancellationTokenToUpdatePlayers;
                        _ = Task.Run(() => StartPeriodicUpdatesCreateGameAsync(gameRecord.Id, cancellationTokenToUpdatePlayers));

                        await Task.Delay(1000);

                        return new OperationResultGameDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), CreateGameDto(gameRecord));
                    }
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);

                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }

                return new OperationResultGameDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(profileClientDto.PreferredLanguage));
            }
        }
        private async Task HandleRelationEntityGameAsync(Game gameRecord, ProfileDto profileClientDto)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id);

            ProfileGame profileGameRecord = await CreateNewRecordProfileGameAsync(profileRecord, gameRecord);
            profileGameRecord.IsPlayerInGame = true;
            await repositoryManager.SaveAsync();
            await CreateRelationProfileGame(profileRecord, profileGameRecord, gameRecord);
        }

        public async Task<ProfileGame> CreateNewRecordProfileGameAsync(Profile profileRecord, Game gameRecord)
        {
            ProfileGame profileGameRecord = new ProfileGame();
            profileGameRecord.ProfileId = profileRecord.Id;
            profileGameRecord.GameId = gameRecord.Id;
            profileGameRecord.Points = 0;
            profileGameRecord.IsPlayerInGame = true;

            repositoryManager.ProfileGameRepository.AddEntity(profileGameRecord);
            await repositoryManager.SaveAsync();

            return profileGameRecord;
        }

        public async Task<bool> AddPlayersToGame(Game gameRecord)
        {
            bool isAdded = false;

            if (gameRecord != null && gameRecord.Status == GameUtilities.DOMAIN_GAME_STATUS_PREGAME)
            {
                gameRecord.NumberPlayers++;
                await repositoryManager.SaveAsync();
                isAdded = true;
            }

            return isAdded;
        }

        public async Task<bool> IsPlayerPreviusJoinedToGameAsync(Game gameRecord, ProfileDto profileClientDto)
        {

            ProfileGame profileGameRecord = await repositoryManager.ProfileGameRepository.IsPlayerJoinedToGameAsync((int)profileClientDto.Id, gameRecord.Id);

            if (profileGameRecord != null && !profileGameRecord.IsPlayerInGame)
            {
                await AddPlayersToGame(gameRecord);
                profileGameRecord.IsPlayerInGame = true;
            }
            await repositoryManager.SaveAsync();
            return profileGameRecord != null;
        }

        public async Task<Game> CreateNewRecordGameAsync(ProfileDto profileClientDto, GameDto gameClientDto)
        {
            Game gameRecord = new Game();
            gameRecord.Name = gameClientDto.Name;
            gameRecord.AccessKey = GenerateAccessKey(profileClientDto);
            gameRecord.Date = DateTime.UtcNow;
            gameRecord.Status = GameUtilities.DOMAIN_GAME_STATUS_PREGAME;
            gameRecord.MaxNumberPlayers = (int)gameClientDto.MaxNumberPlayers;
            gameRecord.AdminGameId = (int)profileClientDto.Id;

            repositoryManager.GameRepository.AddEntity(gameRecord);
            await repositoryManager.SaveAsync();

            return gameRecord;
        }

        public async Task CreateRelationProfileGame(Profile profileRecord, ProfileGame profileGameRecord, Game gameRecord)
        {
            if (profileGameRecord != null && profileRecord != null)
            {
                profileRecord.RelationProfileGames.Add(profileGameRecord);
                gameRecord.RelationProfileGames.Add(profileGameRecord);
                profileGameRecord.RelationGame = gameRecord;
                profileGameRecord.RelationProfile = profileRecord;
                await repositoryManager.SaveAsync();
            }
        }

        public async Task CreateRelationGuestAccountGameAsync(Game gameRecord, GuestAccount guestAccountRecord, GuestAccountGame guestAccountGameRecord)
        {
            if (guestAccountGameRecord != null && guestAccountRecord != null)
            {
                gameRecord.RelationGuestAccountGames.Add(guestAccountGameRecord);
                guestAccountRecord.RelationGuestAccountGames.Add(guestAccountGameRecord);
                guestAccountGameRecord.RelationGame = gameRecord;
                guestAccountGameRecord.RelationGuestAccount = guestAccountRecord;
            }
            await repositoryManager.SaveAsync();
        }

        public static bool CanJoinByGameQuota(Game gameRecord)
        {
            return gameRecord.NumberPlayers < gameRecord.MaxNumberPlayers;
        }

        public Task SendRemainingTimeToJoinedPlayer(Game gameRecord, ConnectedPlayer newPlayer)
        {
            if (gameCountdownToStartGame.ContainsKey(gameRecord.Id))
            {
                int timeRemaining = gameCountdownToStartGame[gameRecord.Id];
                try
                {
                    newPlayer.gameCallback?.UpdateTimeToStartGame(timeRemaining);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }
            return Task.CompletedTask;
        }

        public async Task<OperationResultGameDto> JoinGameInDataBaseAsync(string codeAccess, ProfileDto profileClientDto, IGameCallback gameCallback)
        {
            using (DbContextTransaction gameTransaction = await repositoryManager.StartTransactionAsync())
            {
                Game gameRecord = await repositoryManager.GameRepository.FindGameByKeyAccessAsync(codeAccess);

                if (gameCallback != null && ((ICommunicationObject)gameCallback).State == CommunicationState.Opened && gameRecord != null)
                {
                    ConnectedPlayer newPlayer = new ConnectedPlayer(profileClientDto, gameCallback);

                    if (CanJoinByGameQuota(gameRecord) && (!IsNewPlayer(newPlayer, gameRecord.Id) || await IsPlayerPreviusJoinedToGameAsync(gameRecord, profileClientDto)))
                    {
                        return new OperationResultGameDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), CreateGameDto(gameRecord));

                    }

                    if (CanJoinByGameQuota(gameRecord) && await AddPlayersToGame(gameRecord))
                    {
                        SetConnectedPlayerList(newPlayer, gameRecord);
                        await HandleRelationEntityGameAsync(gameRecord, profileClientDto);
                        await SendRemainingTimeToPlayerAsync(gameRecord.Id, newPlayer);
                        await repositoryManager.SaveAsync();
                        gameTransaction.Commit();
                        return new OperationResultGameDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), CreateGameDto(gameRecord));
                    }
                }
            }
            return new OperationResultGameDto(false, LanguageUtilities.MessageUnableToFindInDataBase(profileClientDto.PreferredLanguage));
        }
        public async Task HandleRelationGuestAccountGameAsync(Game gameRecord, GuestAccountDto guestAccountClientDto)
        {
            GuestAccount guestAccountRecord = await repositoryManager.GuestAccountRepository.FindEntityByIdAsync((int)guestAccountClientDto.Id);
            GuestAccountGame guestAccountGameRecord = await CreateNewRecordGuestAccountGameAsync(guestAccountClientDto, gameRecord);
            guestAccountGameRecord.IsPlayerInGame = true;

            await CreateRelationGuestAccountGameAsync(gameRecord, guestAccountRecord, guestAccountGameRecord);
        }
        public async Task<bool> IsGuestAccountPreviusJoinedAsync(Game gameRecord, GuestAccountDto guestAccountDto, ConnectedPlayer player)
        {
            GuestAccountGame guestAccountGameRecord = await repositoryManager.GuestAccountGameRepository.IsGuestAccountJoinedToGameAsync((int)guestAccountDto.Id, gameRecord.Id);

            if (guestAccountGameRecord != null && !guestAccountGameRecord.IsPlayerInGame)
            {
                await AddPlayersToGame(gameRecord);
                guestAccountGameRecord.IsPlayerInGame = true;
            }

            await repositoryManager.SaveAsync();

            return guestAccountGameRecord != null;
        }

        public async Task<OperationResultGameDto> JoinGameAsaGuestInDataBaseAsync(string accessKey, GuestAccountDto guestAccountClientDto, IGameCallback playerCallback)
        {
            using (DbContextTransaction gameTransaction = await repositoryManager.StartTransactionAsync())
            {
                Game gameRecord = await repositoryManager.GameRepository.FindGameByKeyAccessAsync(accessKey);

                if (playerCallback != null && ((ICommunicationObject)playerCallback).State == CommunicationState.Opened && gameRecord != null)
                {
                    ConnectedPlayer newPlayer = new ConnectedPlayer(playerCallback, guestAccountClientDto);

                    if (CanJoinByGameQuota(gameRecord) && (!IsNewPlayer(newPlayer, gameRecord.Id) || await IsGuestAccountPreviusJoinedAsync(gameRecord, guestAccountClientDto, newPlayer)))
                    {
                        return new OperationResultGameDto(true, LanguageUtilities.MessageSuccess(guestAccountClientDto.PreferredLanguage), CreateGameDto(gameRecord));

                    }

                    if (CanJoinByGameQuota(gameRecord) && await AddPlayersToGame(gameRecord))
                    {
                        SetConnectedPlayerList(newPlayer, gameRecord);
                        await HandleRelationGuestAccountGameAsync(gameRecord, guestAccountClientDto);
                        await SendRemainingTimeToPlayerAsync(gameRecord.Id, newPlayer);
                        await repositoryManager.SaveAsync();
                        gameTransaction.Commit();

                        return new OperationResultGameDto(true, LanguageUtilities.MessageSuccess(guestAccountClientDto.PreferredLanguage), CreateGameDto(gameRecord));
                    }
                }
            }

            return new OperationResultGameDto(false, LanguageUtilities.MessageUnableToSaveData(guestAccountClientDto.PreferredLanguage));
        }

        public async Task<bool> SubstractPlayers(GameDto gameClientDto, int idPlayer)
        {
            Game gameRecord = await repositoryManager.GameRepository.FindEntityByIdAsync((int)gameClientDto.Id);

            if (gameRecord != null)
            {
                gameRecord.NumberPlayers--;

                if (gameRecord.NumberPlayers == GameUtilities.NUMBER_OF_PLAYERS_TO_CANCEL_GAME)
                {
                    gameRecord.Status = GameUtilities.DOMAIN_GAME_STATUS_CANCELLED;
                }

                await repositoryManager.SaveAsync();

                return true;
            }
            return false;
        }

        public async Task<bool> ChangeAdminGame(Game gameRecord)
        {
            bool isPossibleChangeAdmin = false;

            if (connectedPlayersByGame.TryGetValue(gameRecord.Id, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                foreach (ConnectedPlayer player in playersInGame)
                {
                    ConnectedPlayer newAdminPlayer = player;

                    int adminId = newAdminPlayer?.profileClientDto?.Id ?? newAdminPlayer?.guestAccountDto?.Id ?? CharacterUtilities.NON_VALID_ID;

                    if (adminId != CharacterUtilities.NON_VALID_ID && IsPlayerCallbackOpen(newAdminPlayer))
                    {
                        gameRecord.AdminGameId = adminId;
                        await repositoryManager.SaveAsync();
                        NotifyNewAdminId(gameRecord.Id, adminId);
                        isPossibleChangeAdmin = true;
                        break;
                    }
                    else if (adminId != CharacterUtilities.NON_VALID_ID)
                    {
                        await RemoveDisconnectedPlayer(gameRecord.Id, adminId);
                    }
                }
            }

            if (!isPossibleChangeAdmin)
            {
                await ChangeStatusGame(gameRecord, GameUtilities.DOMAIN_GAME_STATUS_CANCELLED);
            }

            return isPossibleChangeAdmin;
        }

        public void NotifyNewAdminId(int gameId, int newAdminId)
        {

            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                foreach (ConnectedPlayer player in playersInGame)
                {
                    if (IsPlayerCallbackOpen(player))
                    {
                        try
                        {
                            player.gameCallback.BroadcastNotifyNewAdmin(newAdminId);
                        }
                        catch (ObjectDisposedException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (CommunicationException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (Exception ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                    }
                }
            }
        }

        public async Task RemoveDisconnectedPlayer(int gameId, int playerId)
        {

            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                ConcurrentBag<ConnectedPlayer> updatedPlayersInGame = new ConcurrentBag<ConnectedPlayer>(playersInGame.Where(player =>
                    !(player.profileClientDto?.Id == playerId || player.guestAccountDto?.Id == playerId)));

                ConnectedPlayer disconnectedPlayer = GetConnectedPlayer(gameId, playerId);

                connectedPlayersByGame[gameId] = updatedPlayersInGame;

                if (disconnectedPlayer != null)
                {
                    Game gameRecord = await repositoryManager.GameRepository.FindEntityByIdAsync(gameId);

                    if (!updatedPlayersInGame.Any() && gameRecord != null)
                    {
                        await ChangeStatusGame(gameRecord, GameUtilities.DOMAIN_GAME_STATUS_CANCELLED);
                        connectedPlayersByGame.TryRemove(gameId, out ConcurrentBag<ConnectedPlayer> updateList);
                    }
                    else if (gameRecord != null && !updatedPlayersInGame.Any(player =>
                        player.profileClientDto?.Id == gameRecord.AdminGameId ||
                        player.guestAccountDto?.Id == gameRecord.AdminGameId))
                    {
                        await ChangeAdminGame(gameRecord);
                    }
                }
            }
            await ChangeStatusProfileGame(playerId, false, gameId);
        }
        public async Task<bool> ChangeStatusProfileGame(int idProfile, bool isPlayerInGame, int idGame)
        {
            ProfileGame profileGameRecord = await repositoryManager.ProfileGameRepository.IsPlayerJoinedToGameAsync(idProfile, idGame);
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync(idProfile);

            if (profileGameRecord != null && profileRecord != null)
            {
                profileGameRecord.IsPlayerInGame = isPlayerInGame;
                profileRecord.IsOnline = isPlayerInGame;
                 await repositoryManager.SaveAsync();
            }
            return true;
        }

        public async Task<OperationResultDto> QuitGameInDatabaseAsync(GameDto gameClientDto, ProfileDto profileClientDto)
        {
            using (DbContextTransaction gameTransaction = await repositoryManager.StartTransactionAsync())
            {
                Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id);
                if (profileRecord != null && await SubstractPlayers(gameClientDto, (int)profileClientDto.Id))
                {
                    await RemoveDisconnectedPlayer((int)gameClientDto.Id, (int)profileClientDto.Id);
                    await repositoryManager.SaveAsync();
                    gameTransaction.Commit();
                    return new OperationResultDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage));
                }
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage));
        }

        public async Task<bool> ChangeGuestAccountStatus(int guestAccountId, bool isActive, int gameId)
        {

            GuestAccount guestAccountRecord = await repositoryManager.GuestAccountRepository.FindEntityByIdAsync(guestAccountId);
            GuestAccountGame guestAccountGameRecord = await repositoryManager.GuestAccountGameRepository.IsGuestAccountJoinedToGameAsync(guestAccountId, gameId);
            if (guestAccountRecord != null && guestAccountGameRecord != null)
            {
                guestAccountRecord.IsActive = isActive;
                guestAccountGameRecord.IsPlayerInGame = isActive;
                await repositoryManager.SaveAsync();
                return true;
            }
            return false;
        }

        public async Task<OperationResultDto> QuitGameAsaGuestAccountInDatabaseAsync(GameDto gameClientDto, GuestAccountDto guestAccountClientDto)
        {
            using (DbContextTransaction gameTransaction = await repositoryManager.StartTransactionAsync())
            {
                if (await SubstractPlayers(gameClientDto, (int)guestAccountClientDto.Id))
                {
                    await RemoveDisconnectedPlayer((int)gameClientDto.Id, (int)guestAccountClientDto.Id);
                    await repositoryManager.SaveAsync();
                    gameTransaction.Commit();
                    return new OperationResultDto(true, LanguageUtilities.MessageSuccess(guestAccountClientDto.PreferredLanguage));
                }
                return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(guestAccountClientDto.PreferredLanguage));
            }
        }

        public async Task<bool> ExpelPlayerAsAdminInDataBase(ExpelPlayerDto expelPlayerDto, GameDto gameClientDto, int idPlayer)
        {
            bool isSuccessExpel = false;

            if (await serviceManager.GameService.IsAdminById(idPlayer, (int)gameClientDto.Id) && expelPlayerDto.IdPlayerToExpel != idPlayer && connectedPlayersByGame.ContainsKey((int)gameClientDto.Id))
            {
                await ExpelRegisteredPlayer(expelPlayerDto.IdPlayerToExpel, gameClientDto, expelPlayerDto.Reason);
                await ExpelGuestPlayer(expelPlayerDto.IdPlayerToExpel, gameClientDto, expelPlayerDto.Reason);
                isSuccessExpel = true;
            }

            return isSuccessExpel;
        }

        private async Task<bool> ExpelRegisteredPlayer(int idPlayerToExpel, GameDto gameClientDto, string reason)
        {

            bool isSuccessExpel = false;
            ConnectedPlayer profileToExpel = GetConnectedPlayer((int)gameClientDto.Id, idPlayerToExpel);
            Game gameRecord = await repositoryManager.GameRepository.FindEntityByIdAsync((int)gameClientDto.Id);

            if (profileToExpel != null && profileToExpel.profileClientDto != null && gameRecord != null)
            {
                try
                {
                    if (((ICommunicationObject)profileToExpel.gameCallback).State == CommunicationState.Opened)
                    {
                        profileToExpel.gameCallback.NotifyPlayerExpulsion(LanguageUtilities.MessageExpelPlayer(profileToExpel.profileClientDto.PreferredLanguage), reason);
                        SendBroadcastMessageExpelPlayer(gameClientDto, profileToExpel);
                        await QuitGameInDatabaseAsync(gameClientDto, profileToExpel.profileClientDto);
                        isSuccessExpel = true;
                    }
                }
                catch (ObjectDisposedException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }
            else if (profileToExpel == null)
            {
                await RemoveDisconnectedPlayer((int)gameClientDto.Id, idPlayerToExpel);
            }
            return isSuccessExpel;
        }

        private async Task<bool> ExpelGuestPlayer(int idPlayerToExpel, GameDto gameClientDto, string reason)
        {
            bool isSuccessExpel = false;
            ConnectedPlayer guestToExpel = GetConnectedPlayer((int)gameClientDto.Id, idPlayerToExpel);

            if (guestToExpel != null && guestToExpel.guestAccountDto != null)
            {
                try
                {
                    if (((ICommunicationObject)guestToExpel.gameCallback).State == CommunicationState.Opened)
                    {
                        guestToExpel.gameCallback.NotifyPlayerExpulsion(LanguageUtilities.MessageExpelPlayer(guestToExpel.guestAccountDto.PreferredLanguage), reason);
                        SendBroadcastMessageExpelPlayer(gameClientDto, guestToExpel);
                        await QuitGameAsaGuestAccountInDatabaseAsync(gameClientDto, guestToExpel.guestAccountDto);
                        isSuccessExpel = true;
                    }
                }
                catch (ObjectDisposedException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }
            return isSuccessExpel;
        }


        public void SetConnectedPlayerList(ConnectedPlayer newPlayer, Game gameRecord)
        {
            if (!connectedPlayersByGame.ContainsKey(gameRecord.Id))
            {
                connectedPlayersByGame[gameRecord.Id] = new ConcurrentBag<ConnectedPlayer>();
            }
            connectedPlayersByGame[gameRecord.Id].Add(newPlayer);
        }

        private bool IsNewPlayer(ConnectedPlayer newPlayer, int gameId)
        {
            return (newPlayer.profileClientDto != null || newPlayer.guestAccountDto != null) &&
                   !connectedPlayersByGame[gameId].Any(player => (player.profileClientDto != null && newPlayer.profileClientDto != null
                   && player.profileClientDto.Id == newPlayer.profileClientDto.Id) || (player.guestAccountDto != null && newPlayer.guestAccountDto != null
                   && player.guestAccountDto.Id == newPlayer.guestAccountDto.Id));
        }

        public static async Task<GuestAccountGame> CreateNewRecordGuestAccountGameAsync(GuestAccountDto guestAccountClientDto, Game gameRecord)
        {
            GuestAccountGame guestAccountRecord = new GuestAccountGame();
            guestAccountRecord.GuestAccountId = (int)guestAccountClientDto.Id;
            guestAccountRecord.GameId = gameRecord.Id;

            return await Task.FromResult(guestAccountRecord);
        }

        public static GameDto CreateGameDto(Game gameRecord)
        {
            GameDto gameDto = new GameDto();

            if(gameRecord != null)
            {
                gameDto.Id = gameRecord.Id;
                gameDto.AccessKey = gameRecord.AccessKey;
                gameDto.Name = gameRecord.Name;
                gameDto.IdAdminGame = gameRecord.AdminGameId;
            }

            return gameDto;
        }
        public static string GenerateAccessKey(ProfileDto profile)
        {
            const string alphabet = AccountValidationUtilities.ALPHABET_EN;
            StringBuilder accessKeyBuilder = new StringBuilder();

            using (RandomNumberGenerator randomNumber = RandomNumberGenerator.Create())
            {
                byte[] arrayRandomNumber = new byte[AccountValidationUtilities.ACCESS_KEY_LENGTH];
                randomNumber.GetBytes(arrayRandomNumber);

                for (int i = 0; i < AccountValidationUtilities.ACCESS_KEY_LENGTH; i++)
                {
                    accessKeyBuilder.Append(alphabet[arrayRandomNumber[i] % alphabet.Length]);
                }
                accessKeyBuilder.Append(CharacterUtilities.STRING_CHAR_DASH);
                accessKeyBuilder.Append(profile.Id);
                accessKeyBuilder.Append(GameUtilities.WORDS_DICTIONARY_ANIMALS[arrayRandomNumber[CharacterUtilities.FIRST_POSITION_ARRAY] % GameUtilities.WORDS_DICTIONARY_ANIMALS.Length]);
            }

            return accessKeyBuilder.ToString();
        }

        public async Task ChangeStatusGame(Game gameRecord, string status)
        {
            gameRecord.Status = status;
            gameRecord.NumberPlayers = 0;   
            await repositoryManager.SaveAsync();
        }

        public async Task<bool> VoteExpelPlayerInDataBase(ExpelPlayerDto expelPlayerDto, int idPlayer, GameDto gameClientDto)
        {
            bool isExpelled = false;

            if (idPlayer != expelPlayerDto.IdPlayerToExpel)
            {
                ConnectedPlayer playerToExpel = GetConnectedPlayer((int)gameClientDto.Id, expelPlayerDto.IdPlayerToExpel);

                if (playerToExpel != null && playerToExpel.AddVote(idPlayer))
                {
                    if (playerToExpel.profileClientDto != null)
                    {
                        playerToExpel.profileClientDto.votesReceived++;
                    }
                    else if (playerToExpel.guestAccountDto != null)
                    {
                        playerToExpel.guestAccountDto.votesReceived++;
                    }

                    int requiredVotes = connectedPlayersByGame[(int)gameClientDto.Id].Count / 2 + 1;

                    if (playerToExpel.votesReceived.Count >= requiredVotes)
                    {

                        Game gameRecord = await repositoryManager.GameRepository.FindEntityByIdAsync((int)gameClientDto.Id);

                        isExpelled = await ExpelPlayerAsAdminInDataBase(expelPlayerDto, gameClientDto, gameRecord.AdminGameId);

                        return isExpelled;
                    }

                }
            }

            return true;
        }

        public ConnectedPlayer GetConnectedPlayer(int gameId, int idPlayer)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame) && playersInGame != null && playersInGame.Any())
            {
                return playersInGame.FirstOrDefault(player =>
                    idPlayer != CharacterUtilities.INT_VALUE_ZERO &&
                    ((player.profileClientDto != null && player.profileClientDto.Id == idPlayer) ||
                     (player.guestAccountDto != null && player.guestAccountDto.Id == idPlayer)));
            }
            return null;
        }

        public void SendBroadcastMessageExpelPlayer(GameDto gameClientDto, ConnectedPlayer expelledPlayer)
        {
            if (gameClientDto == null || expelledPlayer == null || !connectedPlayersByGame.ContainsKey((int)gameClientDto.Id))
            {
                return;
            }

            ConcurrentBag<ConnectedPlayer> playersInGame = connectedPlayersByGame[(int)gameClientDto.Id];

            PlayerDto expelledPlayerDto = CreatePlayerDto(expelledPlayer);

            foreach (ConnectedPlayer player in playersInGame)
            {
                TrySendBroadcastMessage(player, expelledPlayerDto);
            }
        }

        private PlayerDto CreatePlayerDto(ConnectedPlayer expelledPlayer)
        {
            return new PlayerDto
            {
                profileDto = expelledPlayer.profileClientDto,
                guestAccountDto = expelledPlayer.guestAccountDto
            };
        }

        private static void TrySendBroadcastMessage(ConnectedPlayer player, PlayerDto expelledPlayerDto)
        {
            if (player?.gameCallback == null)
            {
                return;
            }

            try
            {
                if (IsPlayerCallbackOpen(player))
                {
                    player.gameCallback.BroadcastMessageExpel(expelledPlayerDto);
                }
            }
            catch (ObjectDisposedException ex)
            {
                Log.Error(ex, ex.Source);
                player.gameCallback = null;
            }
            catch (CommunicationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }

        public async Task<bool> IsAdminById(int idProfileClient, int idGame)
        {
            return await repositoryManager.GameRepository.IsGameAdminByIdAsync(idProfileClient, idGame);
        }

        public Task<OperationResultListOfPlayersInGame> GetAllPlayersInGameInDataBase(GameDto gameClientDto, string preferredLanguage)
        {
            if (connectedPlayersByGame.TryGetValue((int)gameClientDto.Id, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                List<ConnectedPlayer> playersCopy = playersInGame.ToList();
                return Task.FromResult(new OperationResultListOfPlayersInGame(
                    true,
                    LanguageUtilities.MessageSuccess(preferredLanguage),
                    GetRegisteredPlayersInGame(playersCopy),
                    GetGuestAccountPlayersInGame(playersCopy)
                ));
            }

            return Task.FromResult(new OperationResultListOfPlayersInGame(false, LanguageUtilities.MessageUnableToFindInDataBase(preferredLanguage)));
        }

        public static List<ProfileDto> GetRegisteredPlayersInGame(List<ConnectedPlayer> playersInGame)
        {
            List<ProfileDto> profileServerDtos = new List<ProfileDto>();
            try
            {
                if (playersInGame != null)
                {
                    profileServerDtos = playersInGame.Where(playerConnected => playerConnected.profileClientDto != null).Select(playerConnected => playerConnected.profileClientDto)
                    .ToList();
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return profileServerDtos;
        }

        public static List<GuestAccountDto> GetGuestAccountPlayersInGame(List<ConnectedPlayer> playersInGame)
        {
            List<GuestAccountDto> guestAccountServerDtos = new List<GuestAccountDto>();
            try
            {
                if (playersInGame != null)
                {
                    guestAccountServerDtos = playersInGame.Where(playerConnected => playerConnected.guestAccountDto != null).Select(playerConnected
                     => playerConnected.guestAccountDto).ToList();
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return guestAccountServerDtos;
        }

        private async Task SendRemainingTimeToPlayerAsync(int gameId, ConnectedPlayer player)
        {

            await Task.Run(() =>
            {
                if (gameCountdownToStartGame.TryGetValue(gameId, out int timeRemaining))
                {
                    try
                    {
                        player.gameCallback?.UpdateTimeWhenJoinGame(timeRemaining);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                }
            });
        }

        private int CountPlayersReady(int gameId)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                return playersInGame.Count(player => player.IsReadyToPlay);
            }

            return 0;
        }

        private void SetPlayerReady(int gameId, int playerId)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                ConnectedPlayer player = playersInGame.FirstOrDefault(p =>
                    (p.profileClientDto?.Id == playerId || p.guestAccountDto?.Id == playerId));

                if (player != null)
                {
                    player.IsReadyToPlay = true;
                }
            }
        }


        public async Task<bool> StartGameInDataBaseAsync(int idPlayer, GameDto gameClientDto)
        {
            bool isSuccessTransaction = false;

            using (DbContextTransaction gameTransaction = await repositoryManager.StartTransactionAsync())
            {
                isSuccessTransaction = await HandleStartGameUsingConnectedPlayersAsync(idPlayer, gameClientDto);

                if (isSuccessTransaction)
                {

                    await FinalizeTransactionAndClearVotes(gameTransaction);

                    int gameId = (int)gameClientDto.Id;

                    SetPlayerReady(gameId, idPlayer);

                    int readyPlayers = CountPlayersReady(gameId);
                    int totalPlayers = GetTotalPlayersInGame(gameId);

                    if (readyPlayers >= totalPlayers && readyPlayers > GameUtilities.MINIMUN_PLAYERS_BY_GAME)
                    {
                        await SetCountdownToTenSeconds(gameId);
                    }
                    else if (readyPlayers >= GameUtilities.MINIMUN_PLAYERS_TO_START_GAME)
                    {
                        await StartOrUpdateCountdownAsync(gameId, readyPlayers);
                    }
                }
            }
            return isSuccessTransaction;
        }
        private int GetTotalPlayersInGame(int gameId)
        {
            return connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame) ? playersInGame.Count : GameUtilities.NUMBER_OF_PLAYERS_TO_CANCEL_GAME;
        }

        private async Task SetCountdownToTenSeconds(int gameId)
        {
            if (cancelTokenCountDownGame.TryGetValue(gameId, out var existingCts))
            {
                existingCts.Cancel();
                cancelTokenCountDownGame.TryRemove(gameId, out CancellationTokenSource lastCancelToken);
            }

            gameCountdownToStartGame[gameId] = GameUtilities.TIME_TO_START_GAME_COUNTDOWN;

            await UpdateTimeForAllPlayers(gameId, GameUtilities.TIME_TO_START_GAME_COUNTDOWN);

            CancellationTokenSource cancelToken = new CancellationTokenSource();
            cancelTokenCountDownGame.TryAdd(gameId, cancelToken);

            await StartGameCountdownAsync(gameId, cancelToken.Token);
        }
        private async Task StartOrUpdateCountdownAsync(int gameId, int clickCount)
        {
            int reductionTime = CalculateReductionTime(clickCount);

            if (cancelTokenCountDownGame.TryGetValue(gameId, out CancellationTokenSource existingCts))
            {
                existingCts.Cancel();
                cancelTokenCountDownGame.TryRemove(gameId, out CancellationTokenSource lastToken);
            }

            if (gameCountdownToStartGame.ContainsKey(gameId))
            {
                await UpdateCountdownTimer(gameId, reductionTime);
            }
            else
            {
                await InitializeAndStartCountdown(gameId, reductionTime);
            }
        }

        private async Task InitializeAndStartCountdown(int gameId, int reductionTime)
        {
            gameCountdownToStartGame[gameId] = EnsureMinimumCountdown(GameplayUtilities.TIME_TO_START_GAME - reductionTime);

            CancellationTokenSource cts = new CancellationTokenSource();
            cancelTokenCountDownGame.TryAdd(gameId, cts);

            await StartGameCountdownAsync(gameId, cts.Token);
        }

        private static int EnsureMinimumCountdown(int time)
        {
            return Math.Max(time, GameUtilities.TIME_TO_START_GAME_COUNTDOWN);
        }


        private static int CalculateReductionTime(int clickCount)
        {
            return GameUtilities.TIME_TO_START_GAME_COUNTDOWN * clickCount;
        }
        private async Task UpdateCountdownTimer(int gameId, int reductionTime)
        {
            int newTime = Math.Max(GameplayUtilities.TIME_TO_START_GAME - reductionTime, GameUtilities.TIME_TO_START_GAME_COUNTDOWN);
            gameCountdownToStartGame[gameId] = newTime;
            await UpdateTimeForAllPlayers(gameId, newTime);
        }
        private async Task FinalizeTransactionAndClearVotes(DbContextTransaction gameTransaction)
        {
            await repositoryManager.SaveAsync();
            gameTransaction.Commit();
        }

        private async Task StartGameCountdownAsync(int gameId, CancellationToken cancellationToken)
        {
            if (!connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame)) return;

            int timeRemaining = gameCountdownToStartGame[gameId];

            try
            {
                while (timeRemaining > GameUtilities.TIME_MINIMUN_TO_START)
                {
                    gameCountdownToStartGame[gameId] = timeRemaining;

                    if (timeRemaining == GameUtilities.TIME_LAST_SECOND_TO_START || timeRemaining % GameUtilities.TIME_TO_START_GAME_COUNTDOWN == GameUtilities.TIME_MINIMUN_TO_START)
                    {
                        await UpdateTimeForAllPlayers(gameId, timeRemaining);
                    }

                    await Task.Delay(GameUtilities.TIME_MILISECONDS, cancellationToken);

                    timeRemaining--;
                    int readyPlayers = CountPlayersReady(gameId);

                    if (timeRemaining <= 0 && readyPlayers > GameUtilities.MINIMUN_PLAYERS_BY_GAME)
                    {
                        await StartGameForAllPlayersAsync(gameId);
                        InitializeGameBoard(gameId);


                        gameCountdownToStartGame.TryRemove(gameId, out int lastTime);
                        cancelTokenCountDownGame.TryRemove(gameId, out CancellationTokenSource cancelToken);
                    }
                }
            }
            catch (TaskCanceledException ex)
            {
                Log.Error(ex, ex.Source);
            }
            finally
            {
                cancelTokenCountDownGame.TryRemove(gameId, out CancellationTokenSource cancelToken);
            }
        }



        private async Task UpdateTimeForAllPlayers(int gameId, int timeRemaining)
        {
            if (!connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                return;
            }

            bool isConnected = false;

            foreach (ConnectedPlayer player in playersInGame)
            {
                int idplayer = player.profileClientDto?.Id ?? player.guestAccountDto?.Id ?? CharacterUtilities.NON_VALID_ID;
                try
                {
                    if(IsPlayerCallbackOpen(player))
                    {
                        player.gameCallback?.UpdateTimeWhenJoinGame(timeRemaining);
                        isConnected = true;
                    }
                }
                catch(ObjectDisposedException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }

                if(!isConnected)
                {
                    await RemoveDisconnectedPlayer(gameId, idplayer);
                }
            }
        }

        public async Task SendUpdateConnectedPlayer(int gameId)
        {

            bool eliminatePlayer = true;

            if (!connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                return;
            }

            List<ConnectedPlayer> orderedPlayers = playersInGame.OrderBy(player => player.JoinedAt).ToList();

            foreach (ConnectedPlayer player in orderedPlayers)  
            {
                int idplayer = player.profileClientDto?.Id ?? player.guestAccountDto?.Id ?? CharacterUtilities.NON_VALID_ID;
                try
                {
                    if (IsPlayerCallbackOpen(player))
                    {
                        eliminatePlayer = false;
                    }
                }
                catch (CommunicationObjectAbortedException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }

                if (eliminatePlayer)
                {
                    await RemoveDisconnectedPlayer(gameId, idplayer);
                }
            }

            if (orderedPlayers.IsNullOrEmpty())
            {
                CancelExistingNotifier(gameId);
            }
        }

        public async Task StartPeriodicUpdatesCreateGameAsync(int gameId, CancellationTokenSource cancellationTokenSource)
        {
            if (!connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                return;
            }

            try
            {
                while (!cancellationTokenSource.IsCancellationRequested)
                {
                    await SendUpdateConnectedPlayer(gameId);

                    await Task.Delay(TimeSpan.FromSeconds(GameUtilities.TIME_SECONDS_TO_UPDATE_PLAYER_LIST), cancellationTokenSource.Token);
                }
            }
            catch (TaskCanceledException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }




        public async Task<bool> HandleStartGameUsingConnectedPlayersAsync(int idPlayer, GameDto gameClientDto)
        {
            if (connectedPlayersByGame.TryGetValue((int)gameClientDto.Id, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                ConnectedPlayer player = playersInGame.FirstOrDefault(players =>
                    (players.profileClientDto?.Id == idPlayer || players.guestAccountDto?.Id == idPlayer));

                if (player != null)
                {
                    if (player.profileClientDto != null)
                    {
                        await repositoryManager.ProfileGameRepository.StartGameProfile((int)gameClientDto.Id, (int)player.profileClientDto.Id);
                    }
                    else if (player.guestAccountDto != null)
                    {
                        await repositoryManager.GuestAccountGameRepository.StartGameGuestAccountAsync((int)gameClientDto.Id, (int)player.guestAccountDto.Id);
                    }
                    return true;
                }
            }
            return false;
        }

        public static ProfileScoreDto CreateProfileScoreDto(Profile profileClient, int position, int gamesWon, int totalScore)
        {
            ProfileScoreDto profileScoreDto = new ProfileScoreDto();
            
            if(profileClient != null)
            {
                profileScoreDto.Name = profileClient.Name;
                profileScoreDto.Score = totalScore;
                profileScoreDto.Position = position;
                profileScoreDto.GamesWon = gamesWon;
            }
            return profileScoreDto;
        }

        public static ProfileScoreDto CreateProfileScoreWhenNotGamesDto(ProfileDto profileClientDto)
        {
            ProfileScoreDto profileScoreDto = new ProfileScoreDto();
            profileScoreDto.Name = profileClientDto.Name;
            return profileScoreDto;
        }

        public async Task<OperationResultListScoreGame> GetScoreGameWorldInDataBase(ProfileDto profileClientDto)
        {
            await semaphoreScoreWorld.WaitAsync();
            try
            {
                List<ProfileGame> listProfileGameRecord = await GetTenBestPlayersAsync();
                List<ProfileScoreDto> listScoreGameDtos = await GetProfileScoresAsync(listProfileGameRecord);

                listScoreGameDtos = listScoreGameDtos
                    .OrderByDescending(dto => dto.GamesWon)
                    .ThenByDescending(dto => dto.Score)
                    .ToList();

                AssignPositions(listScoreGameDtos);

                return new OperationResultListScoreGame(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), listScoreGameDtos);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
                return new OperationResultListScoreGame(false, LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage), null);
            }
            finally
            {
                semaphoreScoreWorld.Release();
            }
        }

        private async Task<List<ProfileGame>> GetTenBestPlayersAsync()
        {
            return await repositoryManager.ProfileGameRepository.GetTenBestPlayers();
        }

        private async static Task<List<ProfileScoreDto>> GetProfileScoresAsync(List<ProfileGame> profileGames)
        {
            IEnumerable<Task<ProfileScoreDto>> tasks = profileGames.Select(async (profileGame) =>
            {
                using (var context = new CatanDBContext())
                {
                    var profileGameRepository = new ProfileGameRepository(context);
                    var profileRepository = new ProfileRepository(context);

                    int gamesWon = await profileGameRepository.GetGamesWonByPlayer(profileGame.ProfileId);
                    int totalScore = await profileGameRepository.GetTotalPointsByPlayer(profileGame.ProfileId);
                    Profile profileRecord = await profileRepository.FindEntityByIdAsync(profileGame.ProfileId);
                    ProfileScoreDto profileScoreDto = CreateProfileScoreDto(profileRecord, 0, gamesWon, totalScore);

                    return profileScoreDto;
                }
            });

            ProfileScoreDto[] results = await Task.WhenAll(tasks);
            return results.Where(dto => dto != null).ToList();
        }

        private static async Task<List<ProfileScoreDto>> GetProfileScoresAsync(List<Profile> profiles)
        {
            IEnumerable<Task<ProfileScoreDto>> tasks = profiles.Select(async (profile) =>
            {
                using (var context = new CatanDBContext())
                {
                    var profileGameRepository = new ProfileGameRepository(context);
                    var profileRepository = new ProfileRepository(context);

                    int gamesWon = await profileGameRepository.GetGamesWonByPlayer(profile.Id);
                    int totalScore = await profileGameRepository.GetTotalPointsByPlayer(profile.Id);
                    Profile profileRecord = await profileRepository.FindEntityByIdAsync(profile.Id);
                    ProfileScoreDto profileScoreDto = CreateProfileScoreDto(profileRecord, 0, gamesWon, totalScore);

                    return profileScoreDto;
                }
            });

            ProfileScoreDto[] results = await Task.WhenAll(tasks);
            return results.Where(dto => dto != null).ToList();
        }

        public async Task<OperationResultListScoreGame> GetScoreGameFriendsInDataBase(ProfileDto profileClientDto)
        {
            await semaphoreScoreFriend.WaitAsync();
            try
            {
                List<Profile> listFriends = await GetFriendsAndSelfAsync(profileClientDto);
                List<ProfileScoreDto> listScoreGameDtos = await GetProfileScoresAsync(listFriends);

                listScoreGameDtos = listScoreGameDtos
                    .OrderByDescending(dto => dto.GamesWon)
                    .ThenByDescending(dto => dto.Score)
                    .ToList();

                AssignPositions(listScoreGameDtos);

                return new OperationResultListScoreGame(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), listScoreGameDtos);
            }
            finally
            {
                semaphoreScoreFriend.Release();
            }
        }

        private async Task<List<Profile>> GetFriendsAndSelfAsync(ProfileDto profileClientDto)
        {
            List<Profile> listFriends = await repositoryManager.ProfileRepository.GetFriendsByProfileIdAsync((int)profileClientDto.Id);
            Profile profileClientRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id);
            listFriends.Add(profileClientRecord);
            return listFriends;
        }

        private static void AssignPositions(List<ProfileScoreDto> listScoreGameDtos)
        {
            for (int i = 0; i < listScoreGameDtos.Count; i++)
            {
                listScoreGameDtos[i].Position = i + 1;
            }
        }
        public async Task StartGameForAllPlayersAsync(int gameId)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                Game gameRecord = await repositoryManager.GameRepository.FindEntityByIdAsync(gameId);
                await ChangeStatusGame(gameRecord, GameUtilities.DOMAIN_GAME_STATUS_INGAME);
                CancelExistingNotifier(gameId);
                await NotifyPlayersGameStartAsync(gameId, playersInGame);
                await NextTurnInDataBaseAsync(gameId, -1);
                StartPeriodicPlayerListNotifier(gameId);
                DistributeInitialResources(gameId);
                NotifyPlayersWithResources(gameId);
            }
        }

        private async Task NotifyPlayersGameStartAsync(int gameId, ConcurrentBag<ConnectedPlayer> playersInGame)
        {
            List<Task> notificationTasks = new List<Task>();
            List<ConnectedPlayer> disconnectedPlayers = new List<ConnectedPlayer>();

            foreach (ConnectedPlayer player in playersInGame)
            {
                notificationTasks.Add(NotifyPlayerGameStartAsync(player, disconnectedPlayers));
            }

            await Task.WhenAll(notificationTasks);

            HandleDisconnectedPlayersStart(gameId, playersInGame, disconnectedPlayers);
        }
        private static async Task NotifyPlayerGameStartAsync(ConnectedPlayer player, List<ConnectedPlayer> disconnectedPlayers)
        {
            bool isDisconnected = true;

            try
            {
                if (IsPlayerCallbackOpen(player))
                {
                    await Task.Run(() => player.gameCallback.StartGameForAllPlayers());
                    isDisconnected = false;
                }
            }
            catch (CommunicationObjectAbortedException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (CommunicationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            if (isDisconnected)
            {
                lock (disconnectedPlayers)
                {
                    disconnectedPlayers.Add(player);
                }
            }
        }
        private void HandleDisconnectedPlayersStart(int gameId, ConcurrentBag<ConnectedPlayer> playersInGame, List<ConnectedPlayer> disconnectedPlayers)
        {
            if (disconnectedPlayers.Any())
            {
                List<ConnectedPlayer> updatedPlayers = playersInGame.Except(disconnectedPlayers).ToList();
                connectedPlayersByGame[gameId] = new ConcurrentBag<ConnectedPlayer>(updatedPlayers);
            }
        }

        public async Task<bool> NextTurnInDataBaseAsync(int gameId, int playerId)
        {
            if (IsGameReadyForNextTurn(gameId))
            {
                List<ConnectedPlayer> orderedPlayers = GetOrderedPlayers(gameId);
                int currentTurnIndex = GetCurrentTurnIndex(gameId);

                return await ProcessTurn(gameId, playerId, orderedPlayers, currentTurnIndex);
            }
            return false;
        }

        private bool IsGameReadyForNextTurn(int gameId)
        {
            return connectedPlayersByGame.TryGetValue(gameId, out var playersInGame)
                   && playersInGame.Count > GameUtilities.MINIMUN_PLAYERS_BY_GAME;
        }

        private List<ConnectedPlayer> GetOrderedPlayers(int gameId)
        {
            var playersInGame = connectedPlayersByGame[gameId];
            return playersInGame.OrderBy(player => player.JoinedAt).ToList();
        }

        private int GetCurrentTurnIndex(int gameId)
        {
            return gameCurrentTurns.GetOrAdd(gameId, GameUtilities.NOT_TURNS_ASSIGNED);
        }

        private async Task<bool> ProcessTurn(int gameId, int playerId, List<ConnectedPlayer> orderedPlayers, int currentTurnIndex)
        {
            if (currentTurnIndex == GameUtilities.NOT_TURNS_ASSIGNED)
            {
                return await StartFirstTurn(gameId, orderedPlayers);
            }

            if (playerId == GameUtilities.NOT_TURNS_ASSIGNED)
            {
                CancelTurnTimer(gameId);
                return await HandleNextTurn(gameId, orderedPlayers, currentTurnIndex);
            }

            return await HandlePlayerTurn(gameId, playerId, orderedPlayers, currentTurnIndex);
        }

        private async Task<bool> StartFirstTurn(int gameId, List<ConnectedPlayer> orderedPlayers)
        {
            int currentTurnIndex = 0;
            gameCurrentTurns[gameId] = currentTurnIndex;

            await NotifyAllPlayersAboutTurn(gameId, orderedPlayers, currentTurnIndex);
            _ = Task.Run(() => StartTurnTimer(gameId, orderedPlayers, currentTurnIndex));

            return true;
        }

        private async Task<bool> HandlePlayerTurn(int gameId, int playerId, List<ConnectedPlayer> orderedPlayers, int currentTurnIndex)
        {
            if (!IsPlayerInCurrentTurn(orderedPlayers, playerId, currentTurnIndex))
            {
                return false;
            }

            CancelTurnTimer(gameId);
            return await HandleNextTurn(gameId, orderedPlayers, currentTurnIndex);
        }

        private static bool IsPlayerInCurrentTurn(List<ConnectedPlayer> orderedPlayers, int playerId, int currentTurnIndex)
        {
            int currentIndex = orderedPlayers.FindIndex(player =>
                player.profileClientDto?.Id == playerId || player.guestAccountDto?.Id == playerId);

            return currentIndex != GameUtilities.NOT_TURNS_ASSIGNED && currentIndex == currentTurnIndex;
        }


        private async Task<bool> HandleNextTurn(int gameId, List<ConnectedPlayer> orderedPlayers, int currentTurnIndex)
        {
            if (orderedPlayers.Count == GameUtilities.MINIMUN_PLAYERS_BY_GAME)
            {
                EndGame(gameId);
                return false;
            }

            bool continueProcessing = true;

            while (continueProcessing)
            {
                int nextIndex = (currentTurnIndex + GameUtilities.ONE_TURN) % orderedPlayers.Count;
                ConnectedPlayer player = orderedPlayers[nextIndex];

                if (IsPlayerCallbackOpen(player))
                {
                    gameCurrentTurns[gameId] = nextIndex;
                    await NotifyAllPlayersAboutTurn(gameId, orderedPlayers, nextIndex);
                    _ = Task.Run(() => StartTurnTimer(gameId, orderedPlayers, nextIndex));
                    continueProcessing = false;  
                }
                else
                {
                    orderedPlayers.RemoveAt(nextIndex);

                    int playerId = GetPlayerIdFromConnectedPlayer(player);
                    await RemoveDisconnectedPlayer(gameId, playerId);

                    if (orderedPlayers.Count == GameUtilities.NUMBER_OF_PLAYERS_TO_CANCEL_GAME)
                    {
                        gameCurrentTurns.TryRemove(gameId, out _);
                        CancelTurnTimer(gameId);
                        continueProcessing = false;
                    }
                    else
                    {
                        currentTurnIndex = nextIndex % orderedPlayers.Count;
                    }
                }
            }

            return !continueProcessing;
        }

        private async Task NotifyAllPlayersAboutTurn(int gameId, List<ConnectedPlayer> orderedPlayers, int currentTurnIndex)
        {
            List<PlayerTurnStatusDto> playersTurnStatus = OrderPlayerTurnStatusByIndexList(orderedPlayers, currentTurnIndex);

            bool needEliminatePlayers = true;
            List<ConnectedPlayer> disconnectedPlayers = new List<ConnectedPlayer>();

            foreach (ConnectedPlayer player in orderedPlayers)
            {
                try
                {
                    if (IsPlayerCallbackOpen(player))
                    {
                        await Task.Run(() => player.gameCallback?.UpdateTurnStatus(playersTurnStatus));
                        needEliminatePlayers = false;
                    }
                }
                catch (CommunicationObjectAbortedException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }

                if (needEliminatePlayers)
                {
                    disconnectedPlayers.Add(player);
                }
            }

            if (disconnectedPlayers.Any())
            {
                await RemoveDisconnectedPlayers(gameId, disconnectedPlayers);
            }
        }

        private List<PlayerTurnStatusDto> OrderPlayerTurnStatusByIndexList(List<ConnectedPlayer> orderedPlayers, int currentTurnIndex)
        {
            return orderedPlayers.Select((player, index) => new PlayerTurnStatusDto
            {
                ProfileTurnDto = player.profileClientDto,
                GuestAccountTurnDto = player.guestAccountDto,
                IsTurn = index == currentTurnIndex,
                Points = player.Points

            }).ToList();
        }
        private async Task StartTurnTimer(int gameId, List<ConnectedPlayer> orderedPlayers, int currentTurnIndex, int turnDurationSeconds = GameUtilities.TIME_TURN_DURATION)
        {
            if (cancelTokenTurnCountDown.TryRemove(gameId, out CancellationTokenSource existingCancelToken))
            {
                existingCancelToken.Cancel();
            }

            CancellationTokenSource cancellationToken = new CancellationTokenSource();
            cancelTokenTurnCountDown[gameId] = cancellationToken;

            for (int remainingTime = turnDurationSeconds; remainingTime > GameUtilities.TIME_MINIMUN_TO_START; remainingTime--)
            {
                await NotifyTimeRemainingToPlayers(gameId, remainingTime);
                await Task.Delay(GameUtilities.TIME_MILISECONDS, cancellationToken.Token);
            }

            await HandleNextTurn(gameId, orderedPlayers, currentTurnIndex);
        }

        private async Task NotifyTimeRemainingToPlayers(int gameId, int remainingTime)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                foreach (var player in playersInGame)
                {
                    try
                    {
                        if (player.gameCallback != null && IsPlayerCallbackOpen(player))
                        {
                            await Task.Run(() => player.gameCallback.UpdateTurnTimeRemaining(remainingTime));
                        }
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                }
            }
        }

        private void CancelTurnTimer(int gameId)
        {
            if (cancelTokenTurnCountDown.TryRemove(gameId, out CancellationTokenSource cancelTime))
            {
                try
                {
                    cancelTime.Cancel();
                }
                catch(ObjectDisposedException ex)
                {
                    Log.Information(ex, ex.Source);
                }
                catch(AggregateException ex)
                {
                    Log.Information(ex, ex.Source);
                }
                catch(Exception ex)
                {
                    Log.Information(ex, ex.Source);
                }
            }
        }
        private async Task RemoveDisconnectedPlayers(int gameId, List<ConnectedPlayer> disconnectedPlayers)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                List<ConnectedPlayer> updatedPlayers = playersInGame.Except(disconnectedPlayers).ToList();

                await ProcessDisconnectedPlayer(disconnectedPlayers, gameId);

                if (updatedPlayers.Count == GameUtilities.MINIMUN_PLAYERS_BY_GAME)
                {
                    EndGame(gameId);
                    return;
                }

                if (updatedPlayers.Any())
                {
                    connectedPlayersByGame[gameId] = new ConcurrentBag<ConnectedPlayer>(updatedPlayers);

                    if (gameCurrentTurns.TryGetValue(gameId, out int currentTurnIndex))
                    {
                        ConnectedPlayer currentTurnPlayer = playersInGame.ElementAtOrDefault(currentTurnIndex);

                        if (disconnectedPlayers.Contains(currentTurnPlayer))
                        {
                            await HandleNextTurn(gameId, updatedPlayers, currentTurnIndex);
                        }
                    }
                }
                else
                {
                    connectedPlayersByGame.TryRemove(gameId, out _);
                    CancelTurnTimer(gameId);
                }
            }
        }

        private async Task ProcessDisconnectedPlayer(List<ConnectedPlayer> disconnectedPlayers, int gameId)
        {
            foreach (ConnectedPlayer disconnectedPlayer in disconnectedPlayers)
            {
                int? playerId = disconnectedPlayer.profileClientDto?.Id ?? disconnectedPlayer.guestAccountDto?.Id;

                if (playerId.HasValue)
                {
                    await RemoveDisconnectedPlayer(gameId, playerId.Value);
                }
            }
        }


        public async Task ThrowDiceInDataBaseAsync(int gameId, int playerId, int valueDice)
        {
            int resultDice = valueDice;

            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                ConnectedPlayer senderPlayer = GetConnectedPlayer(gameId, playerId);

                List<Task> tasks = new List<Task>();

                foreach (ConnectedPlayer player in playersInGame)
                {
                    tasks.Add(NotifyPlayerWithDiceResultAsync(player, senderPlayer, resultDice));
                }

                await Task.WhenAll(tasks);
                await DistributeResourcesAsync(gameId, resultDice);
            }
        }
        private static async Task NotifyPlayerWithDiceResultAsync(ConnectedPlayer player, ConnectedPlayer senderPlayer, int resultDice)
        {
            if (player == null || player == senderPlayer || player.gameCallback == null)
            {
                return;
            }

            if (IsPlayerCallbackOpen(player))
            {
                await HandlePlayerCommunicationAsync(player, resultDice);
            }
        }

        private static async Task HandlePlayerCommunicationAsync(ConnectedPlayer player, int resultDice)
        {
            try
            {
                await Task.Run(() => player.gameCallback.SendDiceResult(resultDice));
            }
            catch (CommunicationObjectAbortedException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (CommunicationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }

        public async Task QuitGameplayInDataBaseAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync(playerGameplayDto.Id);
            GuestAccount guestAccountRecord = await repositoryManager.GuestAccountRepository.FindEntityByIdAsync(playerGameplayDto.Id);

            await NextTurnInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id);


            if (profileRecord != null)
            {
                ProfileDto profileServerDto = serviceManager.ProfileService.CreateProfileDto(profileRecord);
                await QuitGameInDatabaseAsync(gameClientDto, profileServerDto);
            }
            else if (guestAccountRecord != null)
            {
                GuestAccountDto guestAccountServerDto = await serviceManager.GuestAccountService.CreateGuestAccountDto(guestAccountRecord);
                await QuitGameAsaGuestAccountInDatabaseAsync(gameClientDto, guestAccountServerDto);
            }
        }
        private void StartPeriodicPlayerListNotifier(int gameId, int intervalSeconds = GameUtilities.TIME_PING_INTERVAL_SECONDS)
        {
            CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
            cancelTokenEliminatePlayersInGame[gameId] = cancellationTokenSource;

            Task.Run(() => PeriodicNotificationLoop(gameId, intervalSeconds, cancellationTokenSource));
        }

        private void CancelExistingNotifier(int gameId)
        {
            if (cancelTokenEliminatePlayersInPreGame.TryGetValue(gameId, out CancellationTokenSource existingCancelToken))
            {
                try
                {
                    existingCancelToken.Cancel();
                }
                catch(ObjectDisposedException ex)
                {
                    Log.Information(ex, ex.Source);
                }
                catch (AggregateException ex)
                {
                    Log.Information(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Information(ex, ex.Source);
                }
                finally
                {
                    cancelTokenEliminatePlayersInPreGame.Remove(gameId);
                }
            }
        }

        private async Task PeriodicNotificationLoop(int gameId, int intervalSeconds, CancellationTokenSource cancellationTokenSource)
        {
            try
            {
                while (!cancellationTokenSource.Token.IsCancellationRequested)
                {
                    if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
                    {
                        await HandleDisconnectedPlayers(gameId, playersInGame);

                        if (!playersInGame.Any())
                        {
                            StopPeriodicPlayerListNotifier(gameId);
                            EndGame(gameId);
                            return;
                        }
                    }

                    if (!gameCurrentTurns.TryGetValue(gameId, out int currentTurnIndex))
                    {
                        StopPeriodicPlayerListNotifier(gameId);
                        return;
                    }

                    await NotifyAllPlayersWithList(gameId, currentTurnIndex);
                    await Task.Delay(intervalSeconds * GameUtilities.TIME_MILISECONDS, cancellationTokenSource.Token);
                }
            }
            catch (TaskCanceledException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }

        private async Task HandleDisconnectedPlayers(int gameId, ConcurrentBag<ConnectedPlayer> playersInGame)
        {
            List<ConnectedPlayer> disconnectedPlayers = playersInGame
                .Where(player => player.gameCallback == null || ((ICommunicationObject)player.gameCallback).State != CommunicationState.Opened)
                .ToList();

            foreach (ConnectedPlayer player in disconnectedPlayers)
            {
                int idPlayer = player.profileClientDto?.Id ?? player.guestAccountDto?.Id ?? CharacterUtilities.NON_VALID_ID;
                await RemoveDisconnectedPlayer(gameId, idPlayer);
            }

            if (disconnectedPlayers.Any())
            {
                await RemoveDisconnectedPlayers(gameId, disconnectedPlayers);
            }
        }


        private async Task NotifyAllPlayersWithList(int gameId, int currentTurnIndex)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                List<ConnectedPlayer> orderedPlayers = playersInGame.OrderBy(player => player.JoinedAt).ToList();

                List<PlayerTurnStatusDto> playersTurnStatus = GeneratePlayerTurnStatus(orderedPlayers, currentTurnIndex);

                List<ConnectedPlayer> openPlayers = playersInGame
                    .Where(player => player.gameCallback != null && ((ICommunicationObject)player.gameCallback).State == CommunicationState.Opened)
                    .ToList();  

                await Task.WhenAll(openPlayers.Select(async player =>
                {
                    try
                    {
                        if (player.gameCallback != null)
                        {
                            player.gameCallback?.UpdateListOfPlayersTurns(playersTurnStatus);
                        }
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }

                    await Task.CompletedTask;
                }));
            }
        }


        private List<PlayerTurnStatusDto> GeneratePlayerTurnStatus(List<ConnectedPlayer> orderedPlayers, int currentTurnIndex)
        {
            return orderedPlayers.Select((player, index) => new PlayerTurnStatusDto
            {
                ProfileTurnDto = player.profileClientDto,
                GuestAccountTurnDto = player.guestAccountDto,
                Points = player.Points,
                IsTurn = index == currentTurnIndex
            }).ToList();
        }

        private void StopPeriodicPlayerListNotifier(int gameId)
        {
            if (cancelTokenEliminatePlayersInGame.TryRemove(gameId, out var cancellationTokenSource))
            {
                cancellationTokenSource.Cancel();
            }
        }

        private void EndGame(int gameId)
        {
            if (connectedPlayersByGame.TryRemove(gameId, out var playersInGame))
            {
                foreach (var player in playersInGame)
                {
                    int idPlayer = player.profileClientDto?.Id ?? player.guestAccountDto?.Id ?? CharacterUtilities.NON_VALID_ID;
                    if (player.gameCallback != null && ((ICommunicationObject)player.gameCallback).State == CommunicationState.Opened)
                    {
                        try
                        {
                            Task.Run(() => player.gameCallback.EndGameDisconnectedPlayers()).Wait();
                            RemoveDisconnectedPlayer(gameId, idPlayer).Wait();
                        }
                        catch (CommunicationObjectAbortedException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (CommunicationException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (Exception ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                    }
                }
            }
            StopPeriodicPlayerListNotifier(gameId);
        }

        public void InitializeGameBoard(int gameId)
        {

            if (gameBoardStates.TryGetValue(gameId, out GameBoardStateDto existingBoardState))
            {
                NotifyPlayersWithGameBoard(gameId, existingBoardState);
                return;
            }

            List<HexTileDto> hexTiles = GenerateHexTiles();

            GameplayRules.GenerateVerticesAndEdgesForHexes(hexTiles);

            GameplayRules.ConnectVerticesWithManualRules(hexTiles);

            GameBoardStateDto gameBoardState = new GameBoardStateDto
            {
                GameId = gameId,
                HexTiles = hexTiles
            };

            gameBoardStates[gameId] = gameBoardState;

            NotifyPlayersWithGameBoard(gameId, gameBoardState);
            
        }

        private void NotifyPlayersWithGameBoard(int gameId, GameBoardStateDto gameBoardState)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                playersInGame
                    .Where(player => player.gameCallback != null && ((ICommunicationObject)player.gameCallback).State == CommunicationState.Opened)
                    .ToList() 
                    .ForEach(player =>
                    {
                        try
                        {
                            player.gameCallback.NotifyGameBoardInitialized(gameBoardState);
                        }
                        catch (CommunicationObjectAbortedException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (CommunicationException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (Exception ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                    });
            }
        }



        private void NotifyPlayersPiecePlaced(int gameId, PlayerGameplayDto playerGameplayDto)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame) && gameBoardStates.TryGetValue(gameId, out var gameBoardState))
            {
                GameBoardStateDto gameBoardStateDto = gameBoardStates[gameId];

                playersInGame
                    .Where(player => player.gameCallback != null && ((ICommunicationObject)player.gameCallback).State == CommunicationState.Opened)
                    .ToList()
                    .ForEach(player =>
                    {
                        try
                        {
                            player.gameCallback.NotifyPlayerPlacedPiece(gameBoardStateDto, playerGameplayDto);
                        }
                        catch (CommunicationObjectAbortedException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (CommunicationException ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                        catch (Exception ex)
                        {
                            Log.Error(ex, ex.Source);
                        }
                    });
            }
        }

        private static List<HexTileDto> GenerateHexTiles()
        {
            string[] resources = GameplayUtilities.RESOURCES_GAME;
            int[] diceValues = GameplayUtilities.DICE_VALUES;

            Random random = new Random();
            List<HexTileDto> hexTiles = new List<HexTileDto>();

            int[][] hexTileLayout = GameplayUtilities.HEX_TILE_LAYOUT;

            int hexId = GameplayUtilities.HEXTILE_INITIAL_ID;

            for (int row = 0; row < hexTileLayout.Length; row++)
            {
                for (int column = 0; column < hexTileLayout[row].Length; column++)
                {
                    HexTileDto newHext = new HexTileDto();
                    newHext.Id = hexId++;
                    newHext.Resource = resources[random.Next(resources.Length)];
                    newHext.DiceValue = diceValues[random.Next(diceValues.Length)];
                    newHext.Row = row;
                    newHext.Column = column;
                    newHext.Vertices = new List<VertexDto>(GameplayUtilities.NUMBER_OF_VERTICES);
                    newHext.Edges = new List<EdgeDto>(GameplayUtilities.NUMBER_OF_VERTICES);

                    hexTiles.Add(newHext);
                }
            }

            return hexTiles;
        }

        private void UpdateGameBoardState(int gameId, GameBoardStateDto updatedGameBoardState)
        {
            gameBoardStates[gameId] = updatedGameBoardState;
        }


        public async Task<OperationResultDto> PlacePieceOnBoardAsync(PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, int gameId)
        {
            if (gameBoardStates.TryGetValue(gameId, out GameBoardStateDto gameBoardState))
            {
                return await HandlePiecePlacementAsync(gameBoardState, placementDto, playerGameplayDto, gameId);
            }

            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }


        private async Task<OperationResultDto> HandlePiecePlacementAsync(GameBoardStateDto gameBoardState, PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, int gameId)
        {
            OperationResultDto result;

            switch (placementDto.PieceType)
            {
                case GameplayUtilities.PIECE_GAMEPLAY_SETTLEMEN:
                    result = PlaceSettlement(gameBoardState, placementDto, playerGameplayDto, gameId);
                    break;

                case GameplayUtilities.PIECE_GAMEPLAY_ROAD:
                    result = PlaceRoad(gameBoardState, placementDto, playerGameplayDto, gameId);
                    break;

                case GameplayUtilities.PIECE_GAMEPLAY_CITY:
                    result = PlaceCity(gameBoardState, placementDto, playerGameplayDto, gameId);
                    break;

                default:
                    result = new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
                    break;
            }

            return await Task.FromResult(result);
        }

        private OperationResultDto PlaceSettlement(GameBoardStateDto gameBoardState, PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, int gameId)
        {
            VertexDto vertex = gameBoardState.HexTiles.SelectMany(hextile => hextile.Vertices).FirstOrDefault(vertices => vertices.Id == placementDto.TargetVertexId);

            Dictionary<string, int> cost = new Dictionary<string, int>
            {
                { GameplayUtilities.RESOURCE_TRITONIUM, GameplayUtilities.RESOURCES_ONE_RESOURCE },
                { GameplayUtilities.RESOURCE_GRX_810,  GameplayUtilities.RESOURCES_ONE_RESOURCE },
                { GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS, GameplayUtilities.RESOURCES_ONE_RESOURCE },
                { GameplayUtilities.RESOURCE_EPSILON_BIOMASS, GameplayUtilities.RESOURCES_ONE_RESOURCE }
            };

            if (vertex == null || vertex.IsOccupied || !DeductResources(gamePlayerResources[gameId], playerGameplayDto.Id, cost))
            {
                return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
            }

            vertex.IsOccupied = true;
            vertex.OwnerPlayerId = playerGameplayDto.Id;

            UpdateGameBoardState(gameId, gameBoardState);

            _ = AddPointsToPlayer(playerGameplayDto.Id, GameplayUtilities.POINT_SETTLEMENT, gameId);

            NotifyPlayersPiecePlaced(gameId, playerGameplayDto);
            NotifyPlayersWithResources(gameId);

            return new OperationResultDto(true, LanguageUtilities.MessageSuccess(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        private OperationResultDto PlaceRoad(GameBoardStateDto gameBoardState, PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, int gameId)
        {
            EdgeDto edge = gameBoardState.HexTiles.SelectMany(hextile => hextile.Edges).FirstOrDefault(edges => edges.Id == placementDto.TargetEdgeId);
            Dictionary<string, int> cost = new Dictionary<string, int>
            {
                { GameplayUtilities.RESOURCE_TRITONIUM, GameplayUtilities.RESOURCES_ONE_RESOURCE },
                { GameplayUtilities.RESOURCE_GRX_810, GameplayUtilities.RESOURCES_ONE_RESOURCE }
            };

            if (edge == null || edge.IsOccupied || !PlayerHasSettlement(gameBoardState, playerGameplayDto.Id) || !DeductResources(gamePlayerResources[gameId], playerGameplayDto.Id, cost))
            {
                return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
            }

            edge.IsOccupied = true;
            edge.OwnerPlayerId = playerGameplayDto.Id;

            UpdateGameBoardState(gameId, gameBoardState);

            _ = AddPointsToPlayer(playerGameplayDto.Id, GameplayUtilities.POINT_ROAD, gameId);

            NotifyPlayersPiecePlaced(gameId, playerGameplayDto);
            NotifyPlayersWithResources(gameId);


            return new OperationResultDto(true, LanguageUtilities.MessageSuccess(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        private static bool PlayerHasSettlement(GameBoardStateDto gameBoardState, int playerId)
        {
            return gameBoardState.HexTiles
                .SelectMany(hextile => hextile.Vertices)
                .Any(vertex => vertex.OwnerPlayerId == playerId && vertex.IsOccupied && !vertex.IsCity);
        }


        private OperationResultDto PlaceCity(GameBoardStateDto gameBoardState, PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, int gameId)
        {
            VertexDto vertex = gameBoardState.HexTiles.SelectMany(hextile => hextile.Vertices).FirstOrDefault(vertexInGame => vertexInGame.Id == placementDto.TargetVertexId);

            Dictionary<string, int> cost = new Dictionary<string, int>
            {
                { GameplayUtilities.RESOURCE_EPSILON_BIOMASS, GameplayUtilities.RESOURCES_PRICE_CITY_BIOMASS },
                { GameplayUtilities.RESOURCE_LUNAR_STONE, GameplayUtilities.RESOURCES_PRICE_CITY_LUNAR_STONE }
            };

            if (vertex == null || !GameplayRules.CanUpgradeToCity(vertex, playerGameplayDto.Id) || !DeductResources(gamePlayerResources[gameId], playerGameplayDto.Id, cost))
            {
                return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
            }

            vertex.IsCity = true;

            UpdateGameBoardState(gameId, gameBoardState);

            _ = AddPointsToPlayer(playerGameplayDto.Id, GameplayUtilities.POINT_CITY, gameId);

            NotifyPlayersPiecePlaced(gameId, playerGameplayDto);
            NotifyPlayersWithResources(gameId);

            return new OperationResultDto(true, LanguageUtilities.MessageSuccess(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        private static bool DeductResources(Dictionary<int, PlayerResourcesDto> playerResourcesMap, int playerId, Dictionary<string, int> cost)
        {
            if (!playerResourcesMap.TryGetValue(playerId, out PlayerResourcesDto resources))
            {
                return false;
            }

            foreach (var resource in cost)
            {
                var currentQuantity = GetResourceQuantity(resources, resource.Key);
                if (currentQuantity < resource.Value)
                {
                    return false;
                }
            }

            foreach (var resource in cost)
            {
                DeductResource(resources, resource.Key, resource.Value);
            }

            return true;
        }

        private static bool DeductResources(Dictionary<int, PlayerResourcesDto> playerResourcesMap, int playerId, PlayerResourcesDto resources)
        {
            Dictionary<string, int> cost = new Dictionary<string, int>
            {
                { GameplayUtilities.RESOURCE_LUNAR_STONE, resources.LunarStone.Quantity },
                { GameplayUtilities.RESOURCE_TRITONIUM, resources.Tritonium.Quantity },
                { GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS, resources.AlphaNanofibers.Quantity },
                { GameplayUtilities.RESOURCE_EPSILON_BIOMASS, resources.EpsilonBiomass.Quantity },
                { GameplayUtilities.RESOURCE_GRX_810, resources.Grx810.Quantity }
            };

            return DeductResources(playerResourcesMap, playerId, cost);
        }
        private static void DeductResource(PlayerResourcesDto resources, string resourceName, int amount)
        {
            switch (resourceName)
            {
                case GameplayUtilities.RESOURCE_LUNAR_STONE:
                    resources.LunarStone.Quantity -= amount;
                    break;
                case GameplayUtilities.RESOURCE_TRITONIUM:
                    resources.Tritonium.Quantity -= amount;
                    break;
                case GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS:
                    resources.AlphaNanofibers.Quantity -= amount;
                    break;
                case GameplayUtilities.RESOURCE_EPSILON_BIOMASS:
                    resources.EpsilonBiomass.Quantity -= amount;
                    break;
                case GameplayUtilities.RESOURCE_GRX_810:
                    resources.Grx810.Quantity -= amount;
                    break;
            }
        }


        private static int GetResourceQuantity(PlayerResourcesDto resources, string resourceName)
        {
            switch (resourceName)
            {
                case GameplayUtilities.RESOURCE_LUNAR_STONE:
                    return resources.LunarStone.Quantity;
                case GameplayUtilities.RESOURCE_TRITONIUM:
                    return resources.Tritonium.Quantity;
                case GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS:
                    return resources.AlphaNanofibers.Quantity;
                case GameplayUtilities.RESOURCE_EPSILON_BIOMASS:
                    return resources.EpsilonBiomass.Quantity;
                case GameplayUtilities.RESOURCE_GRX_810:
                    return resources.Grx810.Quantity;
                default:
                    return GameplayUtilities.RESOURCES_NO_REWARD;
            }
        }

        private async Task AddPointsToPlayer(int playerId, int points, int gameId)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                ConnectedPlayer player = playersInGame.FirstOrDefault(p =>
                    p.profileClientDto?.Id == playerId || p.guestAccountDto?.Id == playerId);

                if (player != null)
                {
                    player.Points += points;

                    if (player.Points >= GameplayUtilities.WIN_POINTS_TO_WIN)
                    {
                        Game gameRecord = await repositoryManager.GameRepository.FindEntityByIdAsync(gameId);
                        await ChangeStatusGame(gameRecord, GameUtilities.DOMAIN_GAME_STATUS_POSTGAME);
                        int idPlayer = player.profileClientDto?.Id ?? player.guestAccountDto?.Id ?? CharacterUtilities.NON_VALID_ID;
                        ProfileGame profileGameRecord = await repositoryManager.ProfileGameRepository.IsPlayerJoinedToGameAsync(idPlayer, gameId);
                        if(profileGameRecord != null)
                        {
                            profileGameRecord.Points = GameplayUtilities.WIN_POINTS_TO_WIN;
                            profileGameRecord.IsPlayerInGame = false;
                        }
                        CancelTurnTimer(gameId);
                        await Task.Delay(4000);
                        await repositoryManager.SaveAsync();
                        await EndGameWithWinner(player, gameId);
                    }
                }
            }
        }

        private async Task EndGameWithWinner(ConnectedPlayer winnerPlayer, int gameId)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame))
            {
                foreach (ConnectedPlayer player in playersInGame)
                {
                    try
                    {
                        if (IsPlayerCallbackOpen(player))
                        {
                            string nameWinner = winnerPlayer?.profileClientDto?.Name ?? winnerPlayer?.guestAccountDto?.Name;
                            player.gameCallback.NotifyWinner(nameWinner);
                        }
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                }
            }
            await Task.Delay(GameplayUtilities.TIME_PREVIOUS_TO_END_GAME);
            EndGame(gameId);
        }


        public async Task DistributeResourcesAsync(int gameId, int diceValue)
        {
            if (!gameBoardStates.TryGetValue(gameId, out GameBoardStateDto gameBoardState))
            {
                return;
            }

            if (!gamePlayerResources.ContainsKey(gameId))
            {
                gamePlayerResources[gameId] = new Dictionary<int, PlayerResourcesDto>();
            }

            var activatedHexesWithOwners = GetActivatedHexesWithOwners(gameBoardState, diceValue);

            if (!activatedHexesWithOwners.Any())
            {
                return;
            }

            UpdatePlayerResourcesForActivatedHexes(gameId, activatedHexesWithOwners);

            NotifyPlayersWithResources(gameId);

            await Task.CompletedTask;
        }

        private void DistributeInitialResources(int gameId)
        {
            if (!connectedPlayersByGame.TryGetValue(gameId, out var playersInGame)) return;

            if (!gamePlayerResources.ContainsKey(gameId))
            {
                gamePlayerResources[gameId] = new Dictionary<int, PlayerResourcesDto>();
            }

            var playerResourcesMap = gamePlayerResources[gameId];

            foreach (var player in playersInGame)
            {
                int playerId = GetPlayerIdFromConnectedPlayer(player);

                if (!playerResourcesMap.ContainsKey(playerId))
                {
                    playerResourcesMap[playerId] = new PlayerResourcesDto
                    {
                        PlayerId = playerId,
                        LunarStone = new ResourceDto { ResourceName = GameplayUtilities.RESOURCE_LUNAR_STONE, Quantity = GameplayUtilities.RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS },
                        Tritonium = new ResourceDto { ResourceName = GameplayUtilities.RESOURCE_TRITONIUM, Quantity = GameplayUtilities.RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS },
                        AlphaNanofibers = new ResourceDto { ResourceName = GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS, Quantity = GameplayUtilities.RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS },
                        EpsilonBiomass = new ResourceDto { ResourceName = GameplayUtilities.RESOURCE_EPSILON_BIOMASS, Quantity = GameplayUtilities.RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS },
                        Grx810 = new ResourceDto { ResourceName = GameplayUtilities.RESOURCE_GRX_810, Quantity = GameplayUtilities.RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS }
                    };
                }
            }
        }

        private void UpdatePlayerResourcesForActivatedHexes(int gameId, List<(HexTileDto, Dictionary<int, int>)> activatedHexesWithOwners)
        {

            if (!gamePlayerResources.ContainsKey(gameId))
            {
                gamePlayerResources[gameId] = new Dictionary<int, PlayerResourcesDto>();
            }

            Dictionary<int, PlayerResourcesDto> playerResourcesMap = gamePlayerResources[gameId];

            foreach (var (hex, playerResources) in activatedHexesWithOwners)
            {
                foreach (var playerResource in playerResources)
                {
                    int playerId = playerResource.Key;
                    int resourceAmount = playerResource.Value;

                    if (!playerResourcesMap.TryGetValue(playerId, out var resources))
                    {
                        continue;
                    }

                    switch (hex.Resource)
                    {
                        case GameplayUtilities.RESOURCE_LUNAR_STONE:
                            resources.LunarStone.Quantity += resourceAmount;
                            break;
                        case GameplayUtilities.RESOURCE_TRITONIUM:
                            resources.Tritonium.Quantity += resourceAmount;
                            break;
                        case GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS:
                            resources.AlphaNanofibers.Quantity += resourceAmount;
                            break;
                        case GameplayUtilities.RESOURCE_EPSILON_BIOMASS:
                            resources.EpsilonBiomass.Quantity += resourceAmount;
                            break;
                        case GameplayUtilities.RESOURCE_GRX_810:
                            resources.Grx810.Quantity += resourceAmount;
                            break;
                    }
                }
            }
        }

        private void NotifyPlayersWithResources(int gameId)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out ConcurrentBag<ConnectedPlayer> playersInGame) &&
                gamePlayerResources.TryGetValue(gameId, out var playerResourcesMap))
            {
                foreach (ConnectedPlayer player in playersInGame)
                {
                    try
                    {
                        int playerId = GetPlayerIdFromConnectedPlayer(player);

                        PlayerResourcesDto resources = playerResourcesMap[playerId];

                        if (IsPlayerCallbackOpen(player) && resources != null)
                        {
                            player.gameCallback.NotifyResourcesDistributed(resources);
                        }
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                }
            }
        }

        public async Task<OperationResultDto> StartTradeAsync(PlayerResourcesDto needResources, PlayerResourcesDto offerResources, int gameId)
        {
            if (!HasSufficientResources(gameId, offerResources.PlayerId, offerResources))
            {
                return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
            }

            NotifyPlayersAboutTrade(gameId, needResources, offerResources);

            await Task.CompletedTask;

            return new OperationResultDto(true, LanguageUtilities.MessageSuccess(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        private bool HasSufficientResources(int gameId, int playerId, PlayerResourcesDto offerResources)
        {
            if (!gamePlayerResources.ContainsKey(gameId) || !gamePlayerResources[gameId].ContainsKey(playerId))
            {
                return false;
            }

            var playerResources = gamePlayerResources[gameId][playerId];

            return CheckResourceAvailability(playerResources, offerResources);
        }

        private static bool CheckResourceAvailability(PlayerResourcesDto playerResources, PlayerResourcesDto offerResources)
        {
            if (offerResources.LunarStone.Quantity > playerResources.LunarStone.Quantity || offerResources.Tritonium.Quantity > playerResources.Tritonium.Quantity
                || offerResources.AlphaNanofibers.Quantity > playerResources.AlphaNanofibers.Quantity || offerResources.EpsilonBiomass.Quantity > playerResources.EpsilonBiomass.Quantity
                || offerResources.Grx810.Quantity > playerResources.Grx810.Quantity)
            {
                return false;
            }

            return true;
        }

        private void NotifyPlayersAboutTrade(int gameId, PlayerResourcesDto needResources, PlayerResourcesDto offerResources)
        {
            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                foreach (ConnectedPlayer player in playersInGame)
                {
                    try
                    {
                        int playerId = GetPlayerIdFromConnectedPlayer(player);

                        if (IsPlayerCallbackOpen(player) && playerId != needResources.PlayerId)
                        {
                            player.gameCallback.NotifyTradeRequest(needResources, offerResources);
                        }
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                }
            }
        }

        public async Task<OperationResultDto> AcceptTradeAsync(PlayerResourcesDto sendResources, PlayerResourcesDto receiveResources, int gameId)
        {

            if (!HasSufficientResources(gameId, receiveResources.PlayerId, receiveResources) || !HasSufficientResources(gameId, sendResources.PlayerId, sendResources)
                || !DeductResources(gamePlayerResources[gameId], sendResources.PlayerId, sendResources) || !DeductResources(gamePlayerResources[gameId], receiveResources.PlayerId, receiveResources)
                || !AddResources(gamePlayerResources[gameId], receiveResources.PlayerId, sendResources)
                || !AddResources(gamePlayerResources[gameId], sendResources.PlayerId, receiveResources))
            {
                return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
            }

            NotifyPlayersAboutTradeCompletion(gameId, sendResources, receiveResources);

            await Task.CompletedTask;

            return new OperationResultDto(true, LanguageUtilities.MessageSuccess(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }
   
        private static bool AddResources(Dictionary<int, PlayerResourcesDto> playerResourcesMap, int playerId, PlayerResourcesDto resources)
        {
            if (!playerResourcesMap.ContainsKey(playerId))
            {
                return false;
            }

            PlayerResourcesDto playerResources = playerResourcesMap[playerId];

            playerResources.LunarStone.Quantity += resources.LunarStone.Quantity;
            playerResources.Tritonium.Quantity += resources.Tritonium.Quantity;
            playerResources.AlphaNanofibers.Quantity += resources.AlphaNanofibers.Quantity;
            playerResources.EpsilonBiomass.Quantity += resources.EpsilonBiomass.Quantity;
            playerResources.Grx810.Quantity += resources.Grx810.Quantity;

            return true;
        }

        private void NotifyPlayersAboutTradeCompletion(int gameId, PlayerResourcesDto sendResources, PlayerResourcesDto receiveResources)
        {
            List<int> involvedPlayers = new List<int> { sendResources.PlayerId, receiveResources.PlayerId };


            if (connectedPlayersByGame.TryGetValue(gameId, out var playersInGame))
            {
                NotifyPlayersWithResources(gameId);
                foreach (ConnectedPlayer player in playersInGame)
                {
                    try
                    {
                        int playerId = GetPlayerIdFromConnectedPlayer(player);

                        if (involvedPlayers.Contains(playerId) && IsPlayerCallbackOpen(player))
                        {
                            player.gameCallback.NotifyTradeCompletion();
                        }
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                }
            }
        }

        private static int GetPlayerIdFromConnectedPlayer(ConnectedPlayer player)
        {
            return player.profileClientDto?.Id ?? player.guestAccountDto?.Id ?? AccountValidationUtilities.ACCOUNT_ID_DEFAULT;
        }

        private static bool IsPlayerCallbackOpen(ConnectedPlayer player)
        {
            return player.gameCallback != null && ((ICommunicationObject)player.gameCallback).State == CommunicationState.Opened;
        }

        private void AssignResources(Dictionary<int, Dictionary<int, PlayerResourcesDto>> gamePlayerResources, int gameId, int playerId, string resourceName, int amount)
        {
            if (!gamePlayerResources.ContainsKey(gameId))
            {
                gamePlayerResources[gameId] = new Dictionary<int, PlayerResourcesDto>();
            }

            var playerResourcesMap = gamePlayerResources[gameId];

            if (!playerResourcesMap.ContainsKey(playerId))
            {
                playerResourcesMap[playerId] = new PlayerResourcesDto { PlayerId = playerId };
            }

            var resources = playerResourcesMap[playerId];

            switch (resourceName)
            {
                case GameplayUtilities.RESOURCE_LUNAR_STONE:
                    resources.LunarStone.Quantity += amount;
                    break;
                case GameplayUtilities.RESOURCE_TRITONIUM:
                    resources.Tritonium.Quantity += amount;
                    break;
                case GameplayUtilities.RESOURCE_ALPHA_NANOFIBERS:
                    resources.AlphaNanofibers.Quantity += amount;
                    break;
                case GameplayUtilities.RESOURCE_EPSILON_BIOMASS:
                    resources.EpsilonBiomass.Quantity += amount;
                    break;
                case GameplayUtilities.RESOURCE_GRX_810:
                    resources.Grx810.Quantity += amount;
                    break;
                default:
                    break;
            }
        }


        public List<(HexTileDto, Dictionary<int, int>)> GetActivatedHexesWithOwners(GameBoardStateDto gameBoardState, int diceValue)
        {
            List<HexTileDto> activatedHexes = GetActivatedHexes(gameBoardState, diceValue);
            var hexesWithOwners = new List<(HexTileDto, Dictionary<int, int>)>();
            var hexMap = gameBoardState.HexTiles.ToDictionary(hextileInBoard => hextileInBoard.Id);
            var vertexConnections = GameplayUtilities.GET_MAP_HEXTILES();

            foreach (var hex in activatedHexes)
            {
                var playerResources = ProcessHex(hex, gameBoardState, diceValue, hexMap, vertexConnections);
                hexesWithOwners.Add((hex, playerResources));
            }

            NotifyPlayersWithResources(gameBoardState.GameId);
            return hexesWithOwners;
        }

        private static List<HexTileDto> GetActivatedHexes(GameBoardStateDto gameBoardState, int diceValue)
        {
            return gameBoardState.HexTiles.Where(hex => hex.DiceValue == diceValue).ToList();
        }

        private Dictionary<int, int> ProcessHex(HexTileDto hex, GameBoardStateDto gameBoardState, int diceValue,
            Dictionary<int, HexTileDto> hexMap, Dictionary<int, List<int>> vertexConnections)
        {
            var playerResources = new Dictionary<int, int>();

            foreach (var vertex in hex.Vertices)
            {
                if (vertex.IsOccupied && vertex.OwnerPlayerId.HasValue)
                {
                    int playerId = vertex.OwnerPlayerId.Value;
                    int multiplier = vertex.IsCity ? GameplayUtilities.RESOURCE_REWARD_IS_CITY : GameplayUtilities.RESOURCES_REWARD;

                    AssignResources(gamePlayerResources, gameBoardState.GameId, playerId, hex.Resource, multiplier);
                    ProcessConnectedHexes(vertex, hexMap, vertexConnections, diceValue, gameBoardState);
                }
            }

            return playerResources;
        }

        private void ProcessConnectedHexes(VertexDto vertex, Dictionary<int, HexTileDto> hexMap,
            Dictionary<int, List<int>> vertexConnections, int diceValue, GameBoardStateDto gameBoardState)
        {
            if (!vertexConnections.ContainsKey(vertex.Id)) return;

            foreach (var connectedHexId in vertexConnections[vertex.Id])
            {
                if (hexMap.TryGetValue(connectedHexId, out var connectedHex) && connectedHex.DiceValue == diceValue)
                {
                    var connectedVertex = connectedHex.Vertices.FirstOrDefault(v => v.Id == vertex.Id);
                    if (connectedVertex != null && connectedVertex.OwnerPlayerId.HasValue)
                    {
                        int playerId2 = connectedVertex.OwnerPlayerId.Value;
                        int multiplier2 = connectedVertex.IsCity ? GameplayUtilities.RESOURCE_REWARD_IS_CITY : GameplayUtilities.RESOURCES_REWARD;

                        AssignResources(gamePlayerResources, gameBoardState.GameId, playerId2, connectedHex.Resource, multiplier2);
                    }
                }
            }
        }


    }
}