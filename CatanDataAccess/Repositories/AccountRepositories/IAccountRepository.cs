using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Domain;
using CatanDataAccess.Repositories;

namespace CatanDataAccess.Repositories.AccountRepositories
{
    public interface IAccountRepository : IRepository<Account>
    {
        Task <bool> IsAccountExistsAsync(string username, string phone, string email);
        Task<Account> FindAccountAsync(string phone, string email, string password);
        Task<bool> ChangeStatusToVerifyAsync(string phone, string email, string token);
        Task<string> GetPreferredLanguageAsync(int id);
        Task<bool> SetPreferredLanguageAsync(int id, string preferredLanguage);
        Task<bool> IsAccountRegisteredWithEmailAsync(string email);
        Task<bool> IsAccountRegisteredWithPhoneAsync(string phone);
        Task<bool> LiberateEmailForFreeUseAsync(string email);
        Task<Account> FindAccountByEmailAsync(string email);
        Task<Account> FindAccountByPhoneAsync(string phone);
    }
}
