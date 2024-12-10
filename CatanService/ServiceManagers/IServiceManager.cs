using CatanService.EndPoint;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public interface IServiceManager
    {
        IAccountService AccountService { get; }
        IProfileService ProfileService { get; }
        ISmsService SmsService { get; } 
        ITelegramService TelegramService { get; }
        IEmailService EmailService { get; }
        IGameService GameService { get; }
        IGuestAccountService GuestAccountService{ get; }
        IChatService ChatService { get; }
    }
}
