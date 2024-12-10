using CatanService.DataTransferObject;
using CatanService.EndPoint;
using CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat;
using CatanService.Services;
using Serilog;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.ServiceModel;
using System.Threading.Tasks;

namespace CatanService.EndPoint
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public class ChatServiceEndpoint : IChatServiceEndpoint
    {
        private readonly IServiceManager serviceManager;

        public ChatServiceEndpoint()
        {
        }

        public ChatServiceEndpoint(IServiceManager serviceManager)
        {
            this.serviceManager = serviceManager;
        }
        public async void JoinChatAsync(GameDto gameClientDto, string namePlayer)
        {
            if (gameClientDto != null && !string.IsNullOrEmpty(namePlayer))
            {
                await serviceManager.ChatService.JoinChatAsync(gameClientDto, namePlayer);
            }
        }

        public async void LeaveChatAsync(GameDto gameClientDto, string namePlayer)
        {
            if (gameClientDto != null && !string.IsNullOrEmpty(namePlayer))
            {
                await serviceManager.ChatService.LeaveChatAsync(gameClientDto, namePlayer);
            }
        }

        public async void SendMessageToChatAsync(GameDto gameClientDto, string namePlayer, string message)
        {
            if (gameClientDto != null && !string.IsNullOrEmpty(namePlayer) && !string.IsNullOrEmpty(message))
            {
                await serviceManager.ChatService.SendMessageToChatAsync(gameClientDto, namePlayer, message);
            }
        }
    }
}