using CatanDataAccess.Domain;
using CatanService.DataTransferObject;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.DataTransferObject.GamePlayDto.Resources;
using CatanService.DataTransferObject.PlayerDtos;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.EndPoint;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{

    public interface IGameService
    {
        Task<OperationResultGameDto> CreateNewGameInDataBaseAsync(GameDto gameClientDto, ProfileDto profileClientDto, IGameCallback playerCallback);
        Task<OperationResultGameDto> JoinGameInDataBaseAsync(string codeAccess, ProfileDto profileClientDto, IGameCallback gameCallback);
        Task<OperationResultDto> QuitGameInDatabaseAsync(GameDto gameClientDto, ProfileDto profileClientDto);
        Task<OperationResultDto> QuitGameAsaGuestAccountInDatabaseAsync(GameDto gameClientDto, GuestAccountDto guestAccountClientDto);
        Task<OperationResultGameDto> JoinGameAsaGuestInDataBaseAsync(string accessKey, GuestAccountDto guestAccountClientDto, IGameCallback playerCallback);
        Task<bool> VoteExpelPlayerInDataBase(ExpelPlayerDto expelPlayerDto, int idPlayer, GameDto gameClientDto);
        Task<bool> ExpelPlayerAsAdminInDataBase(ExpelPlayerDto expelPlayerDto, GameDto gameClientDto, int idPlayer);
        Task<bool> IsAdminById(int idProfileClient, int idGame);
        Task<OperationResultListOfPlayersInGame> GetAllPlayersInGameInDataBase(GameDto gameClientDto, string preferredLanguage);
        Task<bool> StartGameInDataBaseAsync(int idPlayer, GameDto gameClientDto);
        Task<OperationResultListScoreGame> GetScoreGameWorldInDataBase(ProfileDto profileClientDto);
        Task<OperationResultListScoreGame> GetScoreGameFriendsInDataBase(ProfileDto profileClientDto);
        Task<bool> NextTurnInDataBaseAsync(int gameId, int playerId);
        Task ThrowDiceInDataBaseAsync(int gameId, int playerId, int valueDice);
        Task QuitGameplayInDataBaseAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto);
        Task<OperationResultDto> PlacePieceOnBoardAsync(PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, int gameId);
        Task<OperationResultDto> StartTradeAsync(PlayerResourcesDto needResources, PlayerResourcesDto offerResources, int gameId);
        Task<OperationResultDto> AcceptTradeAsync(PlayerResourcesDto sendResources, PlayerResourcesDto receiveResources, int gameId);

    }
}