using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using CatanService.DataTransferObject;
using Twilio.Http;

namespace CatanService.EndPoint
{
    /// <summary>
    ///Defines the contract for account-related operations in CatanGame.
    /// </summary>
    [ServiceContract]
    public interface IAccountEndPoint
    {
        /// <summary>
        /// Creates a new account in the system.
        /// </summary>
        /// <param name="accountClientDto">The account information provided by the client.</param>
        /// <returns>A result object containing details about the operation.</returns>
        [OperationContract]
        Task<OperationResultCreateAccountDto> CreateAccountAsync(AccountDto accountClientDto);

        /// <summary>
        /// Verifies an account using the provided information.
        /// </summary>
        /// <param name="accountClientDto">The account information provided by the client.</param>
        /// <returns>A result object indicating whether the verification was successful.</returns>
        [OperationContract]
        Task<OperationResultDto> VerifyAccountAsync(AccountDto accountClientDto);

        /// <summary>
        /// Logs a user into the system using their account details.
        /// </summary>
        /// <param name="accountClientDto">The account information used for login.</param>
        /// <returns>A result object containing the user's profile data if login succeeds.</returns>
        [OperationContract]
        Task<OperationResultProfileDto> LogInAsync(AccountDto accountClientDto);

        /// <summary>
        /// Resends the verification code to the specified email or phone number.
        /// </summary>
        /// <param name="emailOrPhone">The email or phone number to which the verification code should be sent.</param>
        /// <returns>True if the code was sent successfully; otherwise, false.</returns>
        [OperationContract]
        Task<bool> ResendVerificationCodeAsync(string emailOrPhone);

        /// <summary>
        /// Changes the account password to a new value.
        /// </summary>
        /// <param name="accountClientDto">The account information containing the new password.</param>
        /// <returns>A result object indicating the success or failure of the operation.</returns>
        [OperationContract]
        Task<OperationResultDto> ChangePasswordAsync(AccountDto accountClientDto);

        /// <summary>
        /// Sends a verification code to change the registered email or phone number.
        /// </summary>
        /// <param name="accountClientDto">The account information for which the code is generated.</param>
        /// <returns>A result object containing the operation's outcome.</returns>
        [OperationContract]
        Task<OperationResultChangeRegisterEmailOrPhone> SendVerificationCodeToChangeEmailOrPhone(AccountDto accountClientDto);

        /// <summary>
        /// Changes the registered email or phone number for the account.
        /// </summary>
        /// <param name="accountClientDto">The account information with the new email or phone number.</param>
        /// <returns>A result object indicating whether the change was successful.</returns>
        [OperationContract]
        Task<OperationResultChangeRegisterEmailOrPhone> ChangeEmailOrPhoneAsync(AccountDto accountClientDto);

        /// <summary>
        /// Retrieves the profile information for a specific account.
        /// </summary>
        /// <param name="profileClientDto">The profile information used for lookup.</param>
        /// <returns>A result object containing account profile details.</returns>
        [OperationContract]
        Task<OperationResultAccountDto> ConsultAccounProfileInformationAsync(ProfileDto profileClientDto);

        /// <summary>
        /// Sends a verification code to allow the user to change their password.
        /// </summary>
        /// <param name="accountClientDto">The account information used to identify the user.</param>
        /// <returns>A result object indicating the success of the operation.</returns>
        [OperationContract]
        Task<OperationResultDto> SendVerificationCodeToChangePassword(AccountDto accountClientDto);

        /// <summary>
        /// Handles issues related to email for users needing assistance.
        /// </summary>
        /// <param name="email">The user's email address requiring assistance.</param>
        /// <returns>True if the issue was resolved; otherwise, false.</returns>
        [OperationContract]
        Task<bool> NeedHelpProblemWithEmailAsync(string email);

        /// <summary>
        /// Handles issues related to password for users needing assistance.
        /// </summary>
        /// <param name="email">The user's email address requiring assistance.</param>
        /// <returns>True if the issue was resolved; otherwise, false.</returns>
        [OperationContract]
        Task<bool> NeedHelpProblemWithPasswordAsync(string email);

        /// <summary>
        /// Changes a forgotten password using a recovery token.
        /// </summary>
        /// <param name="email">The user's email address.</param>
        /// <param name="newPassword">The new password to set.</param>
        /// <param name="token">The recovery token to authorize the password change.</param>
        /// <returns>True if the password was successfully changed; otherwise, false.</returns>
        [OperationContract]
        Task<bool> ChangeForgotPasswordAsync(string email, string newPassword, string token);
    }

}