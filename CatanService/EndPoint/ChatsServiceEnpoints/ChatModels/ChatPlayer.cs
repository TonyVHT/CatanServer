using CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint.ChatsServiceEnpoints.ChatModels
{
    // Modelo para manejar jugadores en el chat
    public class ChatPlayer
    {
        public string PlayerName { get; set; }
        public IChatCallback Callback { get; set; }
    }
}
