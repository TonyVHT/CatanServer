using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using CatanDataAccess.Repositories;
using CatanService.DataTransferObject;
using CatanService.Helpers;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public class GuestAccountService : IGuestAccountService
    {
        private readonly IRepositoryManager repositoryManager;

        public GuestAccountService(IRepositoryManager repositoryManager)
        {
            this.repositoryManager = repositoryManager;
        }
        public async Task<OperationResultGuestAccountDto> CreateGuestAccountInDataBaseAsync(string preferredLanguage)
        {
            GuestAccount guestAccountRecord = await CreateGestAccount();
            GuestAccountDto guestAccountDto = await CreateGuestAccountDto(guestAccountRecord);

            if (guestAccountDto != null)
            {
                return new OperationResultGuestAccountDto(true, LanguageUtilities.MessageSuccess(preferredLanguage), guestAccountDto);
            }
            return new OperationResultGuestAccountDto(false, LanguageUtilities.MessageUnableToSaveData(preferredLanguage));

        }
        public async Task<GuestAccount> CreateGestAccount()
        {
            GuestAccount guestAccountRecord = null;
            using (DbContextTransaction guestAccountTransaction = await repositoryManager.StartTransactionAsync())
            {
                guestAccountRecord = new GuestAccount();
                guestAccountRecord.IsActive = true;
                guestAccountRecord.LastActivity = DateTime.UtcNow;

                repositoryManager.GuestAccountRepository.AddEntity(guestAccountRecord);
                await repositoryManager.SaveAsync();

                guestAccountRecord.Name = AccountValidationUtilities.GUEST_USER_RESERVED_NAME + guestAccountRecord.Id;
                    
                await repositoryManager.SaveAsync();
                guestAccountTransaction.Commit();
            }

            return guestAccountRecord;
        }

        public async Task<GuestAccountDto> CreateGuestAccountDto(GuestAccount guestAccountRecord)
        {
            GuestAccountDto guestAccountServerDto = null;
            if(guestAccountRecord != null)
            {
                guestAccountServerDto = new GuestAccountDto();  
                guestAccountServerDto.Id = guestAccountRecord.Id;
                guestAccountServerDto.Name = guestAccountRecord.Name;
                guestAccountRecord.LastActivity = DateTime.UtcNow;

                await repositoryManager.SaveAsync();
            }
            return guestAccountServerDto;
        }

        public async Task<bool> IsOnlineGuestAccount(int idGuest)
        {
            bool isOnline = false;
            GuestAccount guestAccountRecord = await repositoryManager.GuestAccountRepository.FindEntityByIdAsync(idGuest);

            if(guestAccountRecord != null)
            {
                if (IsActiveWithinTimeLimite(guestAccountRecord.LastActivity, DateTime.UtcNow))
                {
                    guestAccountRecord.LastActivity = DateTime.UtcNow;
                    isOnline = true;
                }
                else
                {
                    guestAccountRecord.IsActive = false;
                }
                await repositoryManager.SaveAsync();
            }

            return isOnline;

        }
        public static bool IsActiveWithinTimeLimite(DateTime? lastActivity, DateTime? newActivity)
        {
            bool isOnline = false;

            if (lastActivity != null && newActivity != null)
            {
                Double timeDifference = (newActivity.Value - lastActivity.Value).TotalMinutes;

                isOnline = timeDifference < 15;
            }

            return isOnline;
        }
    }
}
