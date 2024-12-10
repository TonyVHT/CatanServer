using CatanService.DataTransferObject;
using CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint
{
    /// <summary>
    /// Defines the contract for the chat service, allowing players to join, leave, and send messages in a game chat session.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IChatCallback))]
    public interface IChatServiceEndpoint
    {
        /// <summary>
        /// Allows a player to join the chat for a specific game.
        /// </summary>
        /// <param name="gameClientDto">The game data associated with the chat session.</param>
        /// <param name="namePlayer">The name of the player joining the chat.</param>
        [OperationContract(IsOneWay = true)]
        void JoinChatAsync(GameDto gameClientDto, string namePlayer);

        /// <summary>
        /// Sends a message to the chat from a specific player.
        /// </summary>
        /// <param name="gameClientDto">The game data associated with the chat session.</param>
        /// <param name="namePlayer">The name of the player sending the message.</param>
        /// <param name="message">The content of the message to send.</param>
        [OperationContract(IsOneWay = true)]
        void SendMessageToChatAsync(GameDto gameClientDto, string namePlayer, string message);

        /// <summary>
        /// Allows a player to leave the chat for a specific game.
        /// </summary>
        /// <param name="gameClientDto">The game data associated with the chat session.</param>
        /// <param name="namePlayer">The name of the player leaving the chat.</param>
        [OperationContract(IsOneWay = true)]
        void LeaveChatAsync(GameDto gameClientDto, string namePlayer);
    }

}
