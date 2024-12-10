using CatanService.DataTransferObject;
using CatanService.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Helpers;
using CatanService.Helpers;

namespace CatanService.EndPoint
{
    public class GuestAccountEndpoint : IGuestAccountEndpoint
    {
        private readonly IServiceManager serviceManager;
        public GuestAccountEndpoint(IServiceManager serviceManager)
        {
            this.serviceManager = serviceManager;
        }
        public async Task<OperationResultGuestAccountDto> CreateGuestAccount(string preferredLanguage)
        {
            if(!string.IsNullOrEmpty(preferredLanguage))
            {
                return await serviceManager.GuestAccountService.CreateGuestAccountInDataBaseAsync(preferredLanguage);
            }
            return new OperationResultGuestAccountDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }
    }
}
