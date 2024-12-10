using CatanDataAccess.Helpers;
using CatanService.DataTransferObject;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.DataTransferObject.GamePlayDto.Resources;
using CatanService.DataTransferObject.PlayerDtos;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.EndPoint;
using CatanService.EndPoint.GameEndPoints;
using CatanService.Helpers;
using CatanService.Services;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public class GameServiceEndpoint : IGameEndPoint
    {
        private readonly IServiceManager serviceManager;
        public GameServiceEndpoint(IServiceManager serviceManager)
        {
            this.serviceManager = serviceManager;
        }

        public GameServiceEndpoint()
        {
        }

        public async Task<OperationResultGameDto> CreateGame(GameDto gameClientDto, ProfileDto profileClientDto)
        {
            IGameCallback playerCallback = OperationContext.Current.GetCallbackChannel<IGameCallback>();

            if (gameClientDto != null && profileClientDto != null && !string.IsNullOrEmpty(gameClientDto.Name) && gameClientDto.Name.Length <= 15 
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.GameService.CreateNewGameInDataBaseAsync(gameClientDto, profileClientDto, playerCallback);
            }
            return new OperationResultGameDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultGameDto> JoinGameAsync(string codeAccess, ProfileDto profileClientDto)
        {
            IGameCallback playerCallback = OperationContext.Current.GetCallbackChannel<IGameCallback>();

            if (!string.IsNullOrEmpty(codeAccess) && profileClientDto != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.GameService.JoinGameInDataBaseAsync(codeAccess, profileClientDto, playerCallback);
            }
            return new OperationResultGameDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultDto> QuitGameAsync(GameDto gameClientDto, ProfileDto profileClientDto)
        {
            if (gameClientDto != null && gameClientDto.Id != null && profileClientDto != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.GameService.QuitGameInDatabaseAsync(gameClientDto, profileClientDto);
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultGameDto> JoinGameAsaGuest(string accessKey, GuestAccountDto guestAccountClientDto)
        {
            IGameCallback playerCallback = OperationContext.Current.GetCallbackChannel<IGameCallback>();

            if (guestAccountClientDto != null && !string.IsNullOrEmpty(guestAccountClientDto.PreferredLanguage)
                && await serviceManager.GuestAccountService.IsOnlineGuestAccount((int)guestAccountClientDto.Id))
            {
                return await serviceManager.GameService.JoinGameAsaGuestInDataBaseAsync(accessKey, guestAccountClientDto, playerCallback);
            }
            return new OperationResultGameDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultDto> QuitGameAsaGuestAccountAsync(GameDto gameClientDto, GuestAccountDto guestAccountClientDto)
        {
            if (gameClientDto != null && guestAccountClientDto != null
                && await serviceManager.GuestAccountService.IsOnlineGuestAccount((int)guestAccountClientDto.Id))
            {
                return await serviceManager.GameService.QuitGameAsaGuestAccountInDatabaseAsync(gameClientDto, guestAccountClientDto);
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<bool> VoteExpelPlayer(ExpelPlayerDto expelPlayerDto, int idPlayer, GameDto gameClientDto)
        {
            if (idPlayer != CharacterUtilities.INT_VALUE_ZERO && gameClientDto != null
                && gameClientDto.Id != CharacterUtilities.INT_VALUE_ZERO && expelPlayerDto != null)
            {
                return await serviceManager.GameService.VoteExpelPlayerInDataBase(expelPlayerDto, idPlayer, gameClientDto);
            }

            return false;
        }

        public async Task<bool> ExpelPlayerAsAdmin(ExpelPlayerDto expelPlayerDto, int idAdmin, GameDto gameClientDto)
        {
            if (gameClientDto != null && gameClientDto.Id != CharacterUtilities.INT_VALUE_ZERO && idAdmin != CharacterUtilities.INT_VALUE_ZERO && expelPlayerDto != null)
            {
                return await serviceManager.GameService.ExpelPlayerAsAdminInDataBase(expelPlayerDto, gameClientDto, idAdmin);
            }
            return false;
        }

        public async Task<OperationResultListOfPlayersInGame> GetAllPlayersInGame(GameDto gameClientDto, string preferredLanguage)
        {
            if (gameClientDto != null && gameClientDto.Id != null && !string.IsNullOrEmpty(preferredLanguage))
            {
                return await serviceManager.GameService.GetAllPlayersInGameInDataBase(gameClientDto, preferredLanguage);
            }

            return new OperationResultListOfPlayersInGame(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultListScoreGame> GetScoreGameWorld(ProfileDto profileClientDto)
        {
            if (profileClientDto != null && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.GameService.GetScoreGameWorldInDataBase(profileClientDto);
            }
            return new OperationResultListScoreGame(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultListScoreGame> GetScoreGameFriends(ProfileDto profileClientDto)
        {
            if (profileClientDto != null && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.GameService.GetScoreGameFriendsInDataBase(profileClientDto);
            }
            return new OperationResultListScoreGame(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<bool> StartGameAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto)
        {
            if (playerGameplayDto != null)
            {
                if (playerGameplayDto.isRegistered)
                {
                     await serviceManager.ProfileService.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession);
                }
                else
                {
                    await serviceManager.GuestAccountService.IsOnlineGuestAccount(playerGameplayDto.Id);
                }
                return await serviceManager.GameService.StartGameInDataBaseAsync(playerGameplayDto.Id, gameClientDto);
            }

            return false;
        }

        public async Task<bool> NextTurnAync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto)
        {
            if (playerGameplayDto != null && gameClientDto != null)
            {
                if (playerGameplayDto.isRegistered)
                {
                    await serviceManager.ProfileService.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession);
                }
                else
                {
                    await serviceManager.GuestAccountService.IsOnlineGuestAccount(playerGameplayDto.Id);
                }
                return await serviceManager.GameService.NextTurnInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id);
            }
            return false;
        }

        public async Task ThrowDiceAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto, int valueDice)
        {
            if (playerGameplayDto != null && gameClientDto != null)
            {
                if (playerGameplayDto.isRegistered)
                {
                    await serviceManager.ProfileService.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession);
                }
                else
                {
                    await serviceManager.GuestAccountService.IsOnlineGuestAccount(playerGameplayDto.Id);
                }
                await serviceManager.GameService.ThrowDiceInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id, valueDice);
            }
        }

        public async Task QuitGamePlayAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto)
        {
            if (playerGameplayDto.isRegistered)
            {
                await serviceManager.ProfileService.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession);
            }
            else
            {
                await serviceManager.GuestAccountService.IsOnlineGuestAccount(playerGameplayDto.Id);
            }

            _ = Task.Run(async () =>
            {
                await serviceManager.GameService.QuitGameplayInDataBaseAsync(playerGameplayDto, gameClientDto);
            });
        }


        public async Task<OperationResultDto> PlacePieceOnBoardAsync(PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, GameDto gameClientDto)
        {
            if (playerGameplayDto != null && gameClientDto != null && placementDto != null)
            {
                if (playerGameplayDto.isRegistered)
                {
                    await serviceManager.ProfileService.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession);
                }
                else
                {
                    await serviceManager.GuestAccountService.IsOnlineGuestAccount(playerGameplayDto.Id);
                }

                return await serviceManager.GameService.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, (int)gameClientDto.Id);
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultDto> StartTradeAsync(PlayerResourcesDto needResources, PlayerResourcesDto offerResources, GameDto gameClientDto)
        {
            if (offerResources != null && needResources != null && gameClientDto != null)
            {
                return await serviceManager.GameService.StartTradeAsync(needResources, offerResources, (int)gameClientDto.Id);
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultDto> AcceptTradeAsync(PlayerResourcesDto sendResources, PlayerResourcesDto receivedResources, GameDto gameClientDto)
        {
            if (sendResources != null && receivedResources != null && gameClientDto != null)
            {
                return await serviceManager.GameService.AcceptTradeAsync(sendResources, receivedResources, (int)gameClientDto.Id);
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }
    }
    
}