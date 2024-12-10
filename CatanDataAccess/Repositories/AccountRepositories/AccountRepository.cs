using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Domain;
using Serilog;
using Serilog.Core;
using Twilio.Base;
using CatanDataAccess.Language;
using CatanDataAccess.Helpers;
using System.Globalization;
using Twilio.Jwt.AccessToken;


namespace CatanDataAccess.Repositories.AccountRepositories
{
    public class AccountRepository : Repository<Account>, IAccountRepository
    {
        public const string DEFAULT_LANGUAGE = "en";
        public AccountRepository(DbContext dbContext) : base(dbContext) 
        {
        }

        public async Task<string> GetPreferredLanguageAsync(int id)
        {
            string response = DEFAULT_LANGUAGE;
            try
            {
                response = await dbDomain.Where(account => account.Id == id).Select(acccount => acccount.PreferredLanguage).FirstOrDefaultAsync();
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return response;
        }

        public async Task<bool> SetPreferredLanguageAsync(int id, string preferredLanguage)
        {
            bool isSuccessfulSave = false;  
            try
            {
                Account accountEntity = await dbDomain.Where(account => account.Id == id).FirstOrDefaultAsync();
                accountEntity.PreferredLanguage = preferredLanguage;
                isSuccessfulSave = true;
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isSuccessfulSave;
        }

        public async Task<bool> IsAccountExistsAsync(string username, string phone, string email)
        {
            bool isAccountExists = false;

            try
            {
                isAccountExists = await dbDomain.Include(account => account.RelationProfile).
                AnyAsync(account => account.PhoneNumber == phone || account.Email == email || account.RelationProfile.Name == username);
            }
            catch(ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }   

            return isAccountExists;
        }

        public async Task<Account> FindAccountAsync(string phone, string email, string password)
        {
            Account accountRecordValided = null;
            try
            {

                Account accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.PhoneNumber == phone || account.Email == email);

                if (accountRecord != null && PasswordUtilities.ComparePassword(password, accountRecord.Salt, accountRecord.PasswordHash))
                {
                    accountRecordValided = accountRecord;
                }

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return accountRecordValided;
        }
        public async Task<bool> ChangeStatusToVerifyAsync(string phone, string email, string token)
        {
            bool isVerify = false;

            try
            {
                Account accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.PhoneNumber == phone || account.Email == email);

                if (accountRecord != null && token.Equals(accountRecord.Token))
                {
                    accountRecord.Status = true;
                    isVerify = true;
                }
          
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isVerify;
        }

        public async Task<bool> IsAccountRegisteredWithEmailAsync(string email)
        {
            bool isAccountExists = false;

            try
            {
                Account accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.Email == email);

                if (accountRecord != null)
                {
                    isAccountExists = true;
                }

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isAccountExists;
        }

        public async Task<bool> IsAccountRegisteredWithPhoneAsync(string phone)
        {
            bool isAccountExists = false;

            try
            {
                Account accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.PhoneNumber == phone);

                if (accountRecord != null)
                {
                    isAccountExists = true;
                }

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isAccountExists;
        }

        public async Task<bool> LiberateEmailForFreeUseAsync(string email)
        {
            bool isAccountExists = false;

            try
            {
                Account accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.Email == email);

                if (accountRecord != null && !accountRecord.Status)
                {
                    accountRecord.Email = null;
                    isAccountExists = true;
                }

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isAccountExists;
        }

        public async Task<Account> FindAccountByEmailAsync(string email)
        {
            Account accountRecord = null;
            try
            {
                accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.Email == email);

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return accountRecord;
        }

        public async Task<Account> FindAccountByPhoneAsync(string phone)
        {
            Account accountRecord = null;
            try
            {
                accountRecord = await dbDomain.FirstOrDefaultAsync(account => account.PhoneNumber == phone);

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return accountRecord;
        }
    }
}
