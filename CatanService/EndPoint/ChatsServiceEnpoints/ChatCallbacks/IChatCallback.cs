using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat
{
    /// <summary>
    /// Defines the callback contract for the chat service, allowing notifications to be sent to connected players.
    /// </summary>
    [ServiceContract]
    public interface IChatCallback
    {
        /// <summary>
        /// Sends a message to a player in the chat.
        /// </summary>
        /// <param name="name">The name of the player who sent the message.</param>
        /// <param name="message">The content of the message.</param>
        [OperationContract(IsOneWay = true)]
        void ReceiveMessage(string name, string message);

        /// <summary>
        /// Notifies players that a new player has joined the chat.
        /// </summary>
        /// <param name="name">The name of the player who joined the chat.</param>
        [OperationContract(IsOneWay = true)]
        void ReceiveMessageJoinPlayerToChat(string name);

        /// <summary>
        /// Notifies players that a player has left the chat.
        /// </summary>
        /// <param name="name">The name of the player who left the chat.</param>
        [OperationContract(IsOneWay = true)]
        void ReceiveMessageLeftPlayerToChat(string name);
    }

}
