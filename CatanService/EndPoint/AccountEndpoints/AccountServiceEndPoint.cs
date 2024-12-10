using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanService.Services;
using CatanService.DataTransferObject;
using Serilog;
using System.Data.SqlClient;
using System.ServiceModel;
using CatanDataAccess.Helpers;
using System.Security.Principal;
using DataTransferObject.Enums;
using CatanService.Helpers;

namespace CatanService.EndPoint
{
    public class AccountServiceEndPoint : IAccountEndPoint
    {
        private readonly IServiceManager serviceManager;

        public AccountServiceEndPoint(IServiceManager serviceManager)
        {
            this.serviceManager = serviceManager;
        }

        public async Task<OperationResultChangeRegisterEmailOrPhone> ChangeEmailOrPhoneAsync(AccountDto accountClientDto)
        {
            if (accountClientDto != null && (accountClientDto.Email != null || accountClientDto.PhoneNumber != null) && accountClientDto.Id != null
                && await serviceManager.ProfileService.IsOnline((int)accountClientDto.Id, accountClientDto.CurrentSessionId))
            {
                return await serviceManager.AccountService.SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync(accountClientDto);
            }
            return new OperationResultChangeRegisterEmailOrPhone(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX, EnumChangeAccountRegister.UnableToSaveData);
        }

        public async Task<OperationResultDto> ChangePasswordAsync(AccountDto accountClientDto)
        {
            if (accountClientDto != null && accountClientDto.Password != null && accountClientDto.Id != null
                && await serviceManager.ProfileService.IsOnline((int)accountClientDto.Id, accountClientDto.CurrentSessionId))
            {
                return await serviceManager.AccountService.SendVerificationCodeToChangePasswordInDataBaseAsync(accountClientDto);
            }
            return new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);
        }

        public async Task<OperationResultCreateAccountDto> CreateAccountAsync(AccountDto accountClientDto)
        {
            if (accountClientDto != null && !accountClientDto.Name.ToUpper().StartsWith(AccountValidationUtilities.GUEST_USER_RESERVED_NAME))
            {
                return await serviceManager.AccountService.CreateAccountInDataBaseAsync(accountClientDto);
            }

            return new OperationResultCreateAccountDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX, EnumCreateAccountStatus.ErrorSaving);
        }
        public async Task<OperationResultProfileDto> LogInAsync(AccountDto accountClientDto)
        {
            if (accountClientDto != null)
            {
                return await serviceManager.AccountService.LogInInDataBaseAsync(accountClientDto);
            }

            return new OperationResultProfileDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX, EnumAuthenticationStatus.Incorrect);
        }

        public async Task<bool> ResendVerificationCodeAsync(string emailOrPhone)
        {
            bool isSuccessResend = false;

            if (!string.IsNullOrEmpty(emailOrPhone))
            {
                isSuccessResend = await serviceManager.AccountService.ResendVerificationCodeAsync(emailOrPhone);
            }

            return isSuccessResend;

        }

        public async Task<OperationResultDto> SendVerificationCodeToChangePassword(AccountDto accountClientDto)
        {
            if (accountClientDto != null && accountClientDto.Token != null && accountClientDto.Id != null &&
                await serviceManager.ProfileService.IsOnline((int)accountClientDto.Id, accountClientDto.CurrentSessionId))
            {
                return await serviceManager.AccountService.ChangePasswordInDataBaseAsync(accountClientDto);
            }
            return new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);
        }

        public async Task<OperationResultDto> VerifyAccountAsync(AccountDto accountClientDto)
        {
            if (accountClientDto != null && accountClientDto.Token.Length == AccountValidationUtilities.TOKEN_VERIFY_ACCOUNT_SIZE)
            {
                return await serviceManager.AccountService.IsVerifyAccount(accountClientDto);
            }
            return new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);
        }
        public async Task<OperationResultChangeRegisterEmailOrPhone> SendVerificationCodeToChangeEmailOrPhone(AccountDto accountClientDto)
        {
            if (accountClientDto != null && (accountClientDto.Email != null || accountClientDto.PhoneNumber != null)
                && accountClientDto.Token != null && accountClientDto.Id != null &&
                await serviceManager.ProfileService.IsOnline((int)accountClientDto.Id, accountClientDto.CurrentSessionId))
            {
                return await serviceManager.AccountService.ChangeEmailOrPhoneInDataBaseAsync(accountClientDto);
            }
            return new OperationResultChangeRegisterEmailOrPhone(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX, 
                EnumChangeAccountRegister.UnableToSaveData);
        }

        public async Task<OperationResultAccountDto> ConsultAccounProfileInformationAsync(ProfileDto profileClientDto)
        {
            if(profileClientDto != null && profileClientDto.PreferredLanguage != null && profileClientDto.Id != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.AccountService.ConsultAccountProfileServiceInDataBase(profileClientDto);
            }
            return new OperationResultAccountDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);
        }

        public async Task<bool> NeedHelpProblemWithEmailAsync(string email)
        {
            if (!string.IsNullOrEmpty(email))
            {
                return await serviceManager.AccountService.NeedHelpProblemWithEmailInDataBase(email);
            }
            return false;
        }

        public async Task<bool> NeedHelpProblemWithPasswordAsync(string email)
        {
            if (!string.IsNullOrEmpty(email))
            {
                return await serviceManager.AccountService.NeedHelpProblemWithPasswordInDataBase(email);
            }
            return false;
        }

        public async Task<bool> ChangeForgotPasswordAsync(string email, string newPassword, string token)
        {
            if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(newPassword) && !string.IsNullOrEmpty(token))
            {
                return await serviceManager.AccountService.ChangeForgotPasswordInDataBase(email, newPassword, token);
            }
            return false;
        }
    }
}