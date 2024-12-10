using CatanDataAccess.Domain;
using CatanService.DataTransferObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public interface IGuestAccountService
    {
        Task<OperationResultGuestAccountDto> CreateGuestAccountInDataBaseAsync(string preferredLanguage);
        Task<bool> IsOnlineGuestAccount(int idGuest);
        Task<GuestAccountDto> CreateGuestAccountDto(GuestAccount guestAccountRecord);
    }
}

