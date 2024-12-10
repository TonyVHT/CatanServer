using CatanDataAccess.Repositories;
using CatanService.EndPoint;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public class ServiceManager : IServiceManager
    {
        private readonly IRepositoryManager repositoryManager;
        private IAccountService accountService;
        private IProfileService profileService;
        private IEmailService emailService;
        private ISmsService smsService;
        private ITelegramService telegramService;
        private IGameService gameService;
        private IGuestAccountService guestAccountService;
        private IChatService chatService;
        public ServiceManager(IRepositoryManager repositoryManager)
        {
            this.repositoryManager = repositoryManager;
        }
        public IAccountService AccountService
        {
            get
            {
                if (accountService == null)
                {
                    accountService = new AccountService(repositoryManager, this);
                }

                return accountService;
            }
        }
        public IProfileService ProfileService 
        {
            get 
            {
                if(profileService == null)
                {
                    profileService = new ProfileService(repositoryManager, this);
                }

                return profileService;
            }
        }

        public ISmsService SmsService
        {
            get
            {
                if(smsService == null)
                {
                    smsService = new SmsService();
                }

                return smsService;
            }
        }

        public ITelegramService TelegramService
        {
            get
            {
                if(telegramService == null)
                {
                    telegramService = new TelegramService();
                }

                return telegramService;
            }
        }

        public IEmailService EmailService
        {
            get
            {
                if(emailService == null)
                {
                    emailService = new EmailService();
                }

                return emailService;
            }
        }

        public IGameService GameService
        {
            get
            {
                if (gameService == null)
                {
                    gameService = new GameService(repositoryManager, this);
                }

                return gameService;
            }
        }

        public IGuestAccountService GuestAccountService
        {
            get
            {
                if (guestAccountService == null)
                {
                    guestAccountService = new GuestAccountService(repositoryManager);
                }

                return guestAccountService;
            }
        }

        public IChatService ChatService
        {
            get
            {
                if (chatService == null)
                {
                    chatService = new ChatService();
                }

                return chatService;
            }
        }
    }
}
