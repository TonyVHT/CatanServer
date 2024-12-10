using CatanService.DataTransferObject;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.DataTransferObject.GamePlayDto.Resources;
using CatanService.DataTransferObject.PlayerDtos;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint.GameEndPoints
{
    /// <summary>
    /// Defines the contract for operations related to game creation, management, and gameplay actions.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IGameCallback))]
    public interface IGameEndPoint
    {
        /// <summary>
        /// Creates a new game.
        /// </summary>
        /// <param name="gameClientDto">Details of the game to be created.</param>
        /// <param name="profileClientDto">Profile information of the player creating the game.</param>
        /// <returns>A result object containing the details of the created game.</returns>
        [OperationContract]
        Task<OperationResultGameDto> CreateGame(GameDto gameClientDto, ProfileDto profileClientDto);

        /// <summary>
        /// Allows a player to quit an active game.
        /// </summary>
        /// <param name="gameClientDto">Details of the game to quit.</param>
        /// <param name="profileClientDto">Profile information of the player quitting the game.</param>
        /// <returns>A result object indicating the success or failure of the operation.</returns>
        [OperationContract]
        Task<OperationResultDto> QuitGameAsync(GameDto gameClientDto, ProfileDto profileClientDto);

        /// <summary>
        /// Allows a guest account to quit an active game.
        /// </summary>
        /// <param name="gameClientDto">Details of the game to quit.</param>
        /// <param name="guestAccountClientDto">Guest account details of the player quitting the game.</param>
        /// <returns>A result object indicating the success or failure of the operation.</returns>
        [OperationContract]
        Task<OperationResultDto> QuitGameAsaGuestAccountAsync(GameDto gameClientDto, GuestAccountDto guestAccountClientDto);

        /// <summary>
        /// Allows a player to join an existing game using an access code.
        /// </summary>
        /// <param name="codeAccess">The access code for the game.</param>
        /// <param name="profileClientDto">Profile information of the player joining the game.</param>
        /// <returns>A result object containing details of the joined game.</returns>
        [OperationContract]
        Task<OperationResultGameDto> JoinGameAsync(string codeAccess, ProfileDto profileClientDto);

        /// <summary>
        /// Allows a guest account to join an existing game using an access key.
        /// </summary>
        /// <param name="accessKey">The access key for the game.</param>
        /// <param name="guestAccountClientDto">Guest account details of the player joining the game.</param>
        /// <returns>A result object containing details of the joined game.</returns>
        [OperationContract]
        Task<OperationResultGameDto> JoinGameAsaGuest(string accessKey, GuestAccountDto guestAccountClientDto);

        /// <summary>
        /// Expels a player from the game as an admin.
        /// </summary>
        /// <param name="expelPlayerDto">Details of the player to be expelled.</param>
        /// <param name="idAdmin">The ID of the admin performing the action.</param>
        /// <param name="gameClientDto">Details of the game from which the player is expelled.</param>
        /// <returns>True if the player was successfully expelled; otherwise, false.</returns>
        [OperationContract]
        Task<bool> ExpelPlayerAsAdmin(ExpelPlayerDto expelPlayerDto, int idAdmin, GameDto gameClientDto);

        /// <summary>
        /// Casts a vote to expel a player from the game.
        /// </summary>
        /// <param name="expelPlayerDto">Details of the player to be expelled.</param>
        /// <param name="idPlayer">The ID of the player casting the vote.</param>
        /// <param name="gameClientDto">Details of the game in which the vote is cast.</param>
        /// <returns>True if the vote was successfully cast; otherwise, false.</returns>
        [OperationContract]
        Task<bool> VoteExpelPlayer(ExpelPlayerDto expelPlayerDto, int idPlayer, GameDto gameClientDto);

        /// <summary>
        /// Retrieves the list of all players in a game.
        /// </summary>
        /// <param name="gameClientDto">Details of the game.</param>
        /// <param name="preferredLanguage">The preferred language for the response.</param>
        /// <returns>A result object containing the list of players in the game.</returns>
        [OperationContract]
        Task<OperationResultListOfPlayersInGame> GetAllPlayersInGame(GameDto gameClientDto, string preferredLanguage);

        /// <summary>
        /// Retrieves the global score ranking for the player.
        /// </summary>
        /// <param name="profileClientDto">Profile information of the player requesting the score.</param>
        /// <returns>A result object containing the global score ranking.</returns>
        [OperationContract]
        Task<OperationResultListScoreGame> GetScoreGameWorld(ProfileDto profileClientDto);

        /// <summary>
        /// Retrieves the friends' score ranking for the player.
        /// </summary>
        /// <param name="profileClientDto">Profile information of the player requesting the score.</param>
        /// <returns>A result object containing the friends' score ranking.</returns>
        [OperationContract]
        Task<OperationResultListScoreGame> GetScoreGameFriends(ProfileDto profileClientDto);

        /// <summary>
        /// Starts the game with the specified player and game details.
        /// </summary>
        /// <param name="playerGameplayDto">Details of the player starting the game.</param>
        /// <param name="gameClientDto">Details of the game to start.</param>
        /// <returns>True if the game was successfully started; otherwise, false.</returns>
        [OperationContract]
        Task<bool> StartGameAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto);

        /// <summary>
        /// Advances the turn to the next player.
        /// </summary>
        /// <param name="playerGameplayDto">Details of the player ending their turn.</param>
        /// <param name="gameClientDto">Details of the game in which the turn is advanced.</param>
        /// <returns>True if the turn was successfully advanced; otherwise, false.</returns>
        [OperationContract]
        Task<bool> NextTurnAync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto);

        /// <summary>
        /// Rolls the dice for the current player's turn.
        /// </summary>
        /// <param name="playerGameplayDto">Details of the player rolling the dice.</param>
        /// <param name="gameClientDto">Details of the game in which the dice is rolled.</param>
        /// <param name="valueDice">The value rolled on the dice.</param>
        [OperationContract]
        Task ThrowDiceAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto, int valueDice);

        /// <summary>
        /// Allows a player to quit the gameplay.
        /// </summary>
        /// <param name="playerGameplayDto">Details of the player quitting the gameplay.</param>
        /// <param name="gameClientDto">Details of the game being quit.</param>
        [OperationContract]
        Task QuitGamePlayAsync(PlayerGameplayDto playerGameplayDto, GameDto gameClientDto);

        /// <summary>
        /// Places a piece on the game board as part of gameplay.
        /// </summary>
        /// <param name="placementDto">Details of the piece placement.</param>
        /// <param name="playerGameplayDto">Details of the player placing the piece.</param>
        /// <param name="gameClientDto">Details of the game in which the piece is placed.</param>
        /// <returns>A result object indicating the success or failure of the operation.</returns>
        [OperationContract]
        Task<OperationResultDto> PlacePieceOnBoardAsync(PiecePlacementDto placementDto, PlayerGameplayDto playerGameplayDto, GameDto gameClientDto);
        [OperationContract]
        Task<OperationResultDto> StartTradeAsync(PlayerResourcesDto needResources, PlayerResourcesDto offerResources, GameDto gameClientDto);
        [OperationContract]
        Task<OperationResultDto> AcceptTradeAsync(PlayerResourcesDto sendResources, PlayerResourcesDto receivedResources, GameDto gameClientDto);
    }
}