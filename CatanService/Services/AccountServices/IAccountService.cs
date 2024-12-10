using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using CatanService.DataTransferObject;

namespace CatanService.Services
{
    public interface IAccountService
    {
        Task<OperationResultCreateAccountDto> CreateAccountInDataBaseAsync(AccountDto accountClientDto);
        Task<OperationResultProfileDto> LogInInDataBaseAsync(AccountDto accountClientDto);
        Task<OperationResultDto> IsVerifyAccount(AccountDto accountClientDto);
        Task<bool> ResendVerificationCodeAsync(string emailOrPhone);
        Task<OperationResultDto> SendVerificationCodeToChangePasswordInDataBaseAsync(AccountDto accountClientDto);
        Task<OperationResultDto> ChangePasswordInDataBaseAsync(AccountDto accountClientDto);
        Task <OperationResultChangeRegisterEmailOrPhone>SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync(AccountDto accountClientDto);
        Task <OperationResultChangeRegisterEmailOrPhone> ChangeEmailOrPhoneInDataBaseAsync(AccountDto accountClientDto);
        Task <OperationResultAccountDto>ConsultAccountProfileServiceInDataBase(ProfileDto profileClientDto);
        Task SendInviteGameToFriends(Account accountRecord, string accessKey);
        Task<bool> NeedHelpProblemWithEmailInDataBase(string email);
        Task<bool> NeedHelpProblemWithPasswordInDataBase(string email);
        Task<bool> ChangeForgotPasswordInDataBase(string email, string newPassword, string token);
    }
}


