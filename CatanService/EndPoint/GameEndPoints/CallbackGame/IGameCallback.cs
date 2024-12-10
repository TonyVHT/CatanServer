using CatanService.DataTransferObject.GamePlayDto;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.DataTransferObject.GamePlayDto.Resources;
using CatanService.DataTransferObject.PlayerDtos;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.EndPoint.GameEndPoints.GameModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint
{
    /// <summary>
    /// Defines the callback contract for game-related notifications, providing real-time updates to players.
    /// </summary>
    [ServiceContract]
    public interface IGameCallback
    {
        /// <summary>
        /// Notifies a player that they have been expelled from the game.
        /// </summary>
        /// <param name="message">The expulsion message.</param>
        /// <param name="reason">The reason for the expulsion.</param>
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerExpulsion(string message, string reason);

        /// <summary>
        /// Broadcasts a message to all players about an expelled player.
        /// </summary>
        /// <param name="playerExpeled">Details of the expelled player.</param>
        [OperationContract(IsOneWay = true)]
        void BroadcastMessageExpel(PlayerDto playerExpeled);

        /// <summary>
        /// Notifies all players about a new admin for the game.
        /// </summary>
        /// <param name="idAdmin">The ID of the new admin.</param>
        [OperationContract(IsOneWay = true)]
        void BroadcastNotifyNewAdmin(int idAdmin);

        /// <summary>
        /// Updates all players with the remaining time before the game starts.
        /// </summary>
        /// <param name="time">The remaining time in seconds.</param>
        [OperationContract(IsOneWay = true)]
        void UpdateTimeToStartGame(int time);

        /// <summary>
        /// Updates a player with the remaining time to start the game when they join.
        /// </summary>
        /// <param name="time">The remaining time in seconds.</param>
        [OperationContract(IsOneWay = true)]
        void UpdateTimeWhenJoinGame(int time);

        /// <summary>
        /// Notifies all players that the game has started.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void StartGameForAllPlayers();

        /// <summary>
        /// Updates all players with the current turn status.
        /// </summary>
        /// <param name="playersTurnStatus">The turn status of all players.</param>
        [OperationContract(IsOneWay = true)]
        void UpdateTurnStatus(List<PlayerTurnStatusDto> playersTurnStatus);

        /// <summary>
        /// Updates all players with the remaining time for the current turn.
        /// </summary>
        /// <param name="remainingTime">The remaining time in seconds for the current turn.</param>
        [OperationContract(IsOneWay = true)]
        void UpdateTurnTimeRemaining(int remainingTime);

        /// <summary>
        /// Sends the result of the dice roll to all players.
        /// </summary>
        /// <param name="diceResult">The result of the dice roll.</param>
        [OperationContract(IsOneWay = true)]
        void SendDiceResult(int diceResult);

        /// <summary>
        /// Notifies players that the game has ended due to disconnected players.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void EndGameDisconnectedPlayers();

        /// <summary>
        /// Updates all players with the current turn order.
        /// </summary>
        /// <param name="playersTurnStatus">The turn order of all players.</param>
        [OperationContract(IsOneWay = true)]
        void UpdateListOfPlayersTurns(List<PlayerTurnStatusDto> playersTurnStatus);

        /// <summary>
        /// Notifies all players that the game board has been initialized.
        /// </summary>
        /// <param name="gameBoardState">The initialized game board state.</param>
        [OperationContract(IsOneWay = true)]
        void NotifyGameBoardInitialized(GameBoardStateDto gameBoardState);

        /// <summary>
        /// Notifies all players that a piece has been placed on the board.
        /// </summary>
        /// <param name="piecePlacement">Details of the placed piece.</param>
        /// <param name="playerGameplayDto">Details of the player who placed the piece.</param>
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerPlacedPiece(GameBoardStateDto gameBoardStateDto, PlayerGameplayDto playerGameplayDto);

        /// <summary>
        /// Notifies a player about the resources distributed to them.
        /// </summary>
        /// <param name="receivedResources">Details of the distributed resources.</param>
        [OperationContract(IsOneWay = true)]
        void NotifyResourcesDistributed(PlayerResourcesDto receivedResources);
        [OperationContract(IsOneWay = true)]
        void NotifyTradeRequest(PlayerResourcesDto needResources, PlayerResourcesDto offerResources);
        [OperationContract(IsOneWay = true)]
        void NotifyTradeCompletion();
        [OperationContract(IsOneWay = true)]
        void NotifyWinner(string name);
    }
}
