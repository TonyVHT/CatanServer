using CatanService.DataTransferObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public interface IChatService
    {
        Task JoinChatAsync(GameDto gameClientDto, string namePlayer);

        Task SendMessageToChatAsync(GameDto gameClientDto, string namePlayer, string messageToPlayers);

        Task LeaveChatAsync(GameDto gameClientDto, string namePlayer);
    }
}
