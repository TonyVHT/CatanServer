using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public interface IEmailService
    {
        Task SendConfirmationEmailAsync(Account accountEntity);
        Task SendGameCodeToFriends(Account accountRecord, string codeGame);
    }
}
