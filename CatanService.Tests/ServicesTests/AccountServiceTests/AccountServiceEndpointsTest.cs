using CatanDataAccess.Helpers;
using CatanService.DataTransferObject;
using CatanService.EndPoint;
using CatanService.Helpers;
using CatanService.Services;
using DataTransferObject.Enums;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Tests.ServicesTests.AccountServiceTests
{
    [TestClass]
    public class AccountServiceEndPointTests
    {
        private Mock<IServiceManager> mockServiceManager;
        private Mock<IAccountService> mockAccountService;
        private Mock<IProfileService> mockProfileService;
        private AccountServiceEndPoint accountServiceEndPoint;

        [TestInitialize]
        public void Setup()
        {
            mockServiceManager = new Mock<IServiceManager>();
            mockAccountService = new Mock<IAccountService>();
            mockProfileService = new Mock<IProfileService>();

            mockServiceManager.Setup(sm => sm.AccountService).Returns(mockAccountService.Object);
            mockServiceManager.Setup(sm => sm.ProfileService).Returns(mockProfileService.Object);

            accountServiceEndPoint = new AccountServiceEndPoint(mockServiceManager.Object);
        }

        [TestMethod]
        public async Task CreateAccountAsync_ShouldReturnSuccess_WhenValidDataProvided()
        {
            var accountDto = new AccountDto { Email = "tony@example.com", Password = "ValidPassword123", Name = "TestUser", PreferredLanguage = "en" };
            var expectedResult = new OperationResultCreateAccountDto(true, "Account created successfully", EnumCreateAccountStatus.SuccessSave);

            mockAccountService.Setup(account => account.CreateAccountInDataBaseAsync(accountDto))
                              .ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.CreateAccountAsync(accountDto);

            Assert.IsTrue(result.IsSuccess && result.status == EnumCreateAccountStatus.SuccessSave,
                          "Expected account creation to succeed with status 'SuccessSave'.");
        }

        [TestMethod]
        public async Task CreateAccountAsync_ShouldReturnError_WhenAccountDtoIsNull()
        {
            var result = await accountServiceEndPoint.CreateAccountAsync(null);

            Assert.IsTrue(!result.IsSuccess && result.status == EnumCreateAccountStatus.ErrorSaving,
                          "Expected account creation to fail with null input and status 'ErrorSaving'.");
        }
        [TestMethod]
        public async Task CreateAccountAsync_ShouldReturnError_WhenInvalidPasswordProvided()
        {
            var accountDto = new AccountDto { Email = "tony@example.com", Password = "*&*oihl", Name = "TestUser", PreferredLanguage = "en" };
            var expectedResult = new OperationResultCreateAccountDto(false, "Invalid password format", EnumCreateAccountStatus.ErrorSaving);

            mockAccountService.Setup(a => a.CreateAccountInDataBaseAsync(accountDto))
                              .ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.CreateAccountAsync(accountDto);

            Assert.IsTrue(!result.IsSuccess && result.status == EnumCreateAccountStatus.ErrorSaving,
                          "Expected account creation to fail with status 'ErrorSaving' due to invalid password.");
        }

        [TestMethod]
        public async Task LogInAsync_ShouldReturnSuccess_WhenValidAccountDtoProvided()
        {
            var accountDto = new AccountDto { Email = "tony@example.com", Password = "ValidPassword123" };
            var expectedResult = new OperationResultProfileDto(true, "Login successful", new ProfileDto(), EnumAuthenticationStatus.Verified);

            mockAccountService.Setup(a => a.LogInInDataBaseAsync(accountDto))
                              .ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.LogInAsync(accountDto);

            Assert.IsTrue(result.IsSuccess && result.AunthenticationStatus == EnumAuthenticationStatus.Verified,
                          "Expected login to succeed with status 'Verified'.");
        }

        [TestMethod]
        public async Task LogInAsync_ShouldReturnNotVerified_WhenAccountIsNotVerified()
        {
            var accountDto = new AccountDto { Email = "tony@example.com", Password = "ValidPassword123" };
            var expectedResult = new OperationResultProfileDto(false, "Account not verified", null, EnumAuthenticationStatus.NotVerified);

            mockAccountService.Setup(a => a.LogInInDataBaseAsync(accountDto))
                              .ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.LogInAsync(accountDto);

            Assert.IsTrue(!result.IsSuccess && result.AunthenticationStatus == EnumAuthenticationStatus.NotVerified,
                          "Expected login to fail with status 'NotVerified' when account is not verified.");
        }

        [TestMethod]
        public async Task LogInAsync_ShouldReturnError_WhenAccountDtoIsNull()
        {
            var result = await accountServiceEndPoint.LogInAsync(null);

            Assert.IsTrue(!result.IsSuccess && result.AunthenticationStatus == EnumAuthenticationStatus.Incorrect,
                          "Expected login to fail with status 'Incorrect' when AccountDto is null.");
        }

        [TestMethod]
        public async Task SendVerificationCodeToChangePassword_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var accountDto = new AccountDto { Id = 1, Token = "validToken", TokenExpiration = DateTime.UtcNow.AddMinutes(30), CurrentSessionId = "session123" };
            var expectedResult = new OperationResultDto(true, "Password change verification sent successfully");

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(true);
            mockAccountService.Setup(a => a.ChangePasswordInDataBaseAsync(accountDto)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.SendVerificationCodeToChangePassword(accountDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Password change verification sent successfully",
                          "Expected verification code to be sent successfully for password change.");
        }



        [TestMethod]
        public async Task ChangeEmailOrPhoneAsync_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var accountDto = new AccountDto { Id = 1, Email = "tony@example.com", CurrentSessionId = "session123" };
            var expectedResult = new OperationResultChangeRegisterEmailOrPhone(true, "Verification code sent successfully", EnumChangeAccountRegister.Success);

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(true);
            mockAccountService.Setup(a => a.SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync(accountDto)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.ChangeEmailOrPhoneAsync(accountDto);

            Assert.IsTrue(result.IsSuccess,
                          "Expected verification code to be sent successfully with status 'Success'.");
        }

        [TestMethod]
        public async Task ChangeEmailOrPhoneAsync_ShouldReturnError_WhenAccountDtoIsNull()
        {
            var result = await accountServiceEndPoint.ChangeEmailOrPhoneAsync(null);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when AccountDto is null.");
        }

        [TestMethod]
        public async Task ChangeEmailOrPhoneAsync_ShouldReturnError_WhenEmailAndPhoneNumberAreNull()
        {
            var accountDto = new AccountDto { Id = 1, Email = null, PhoneNumber = null, CurrentSessionId = "session123" };

            var result = await accountServiceEndPoint.ChangeEmailOrPhoneAsync(accountDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when both Email and PhoneNumber are null.");
        }

        [TestMethod]
        public async Task ChangeEmailOrPhoneAsync_ShouldReturnError_WhenUserIsNotOnline()
        {
            var accountDto = new AccountDto { Id = 1, Email = "tony@example.com", CurrentSessionId = "session123" };

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(false);

            var result = await accountServiceEndPoint.ChangeEmailOrPhoneAsync(accountDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when user is not online.");
        }

        [TestMethod]
        public async Task ChangePasswordAsync_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var accountDto = new AccountDto { Id = 1, Password = "NewValidPassword123", CurrentSessionId = "session123" };
            var expectedResult = new OperationResultDto(true, "Password change verification sent successfully");

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(true);
            mockAccountService.Setup(a => a.SendVerificationCodeToChangePasswordInDataBaseAsync(accountDto)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.ChangePasswordAsync(accountDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Password change verification sent successfully",
                          "Expected password change verification to be sent successfully.");
        }

        [TestMethod]
        public async Task VerifyAccountAsync_ShouldReturnError_WhenAccountDtoIsNullOrTokenInvalid()
        {
            var accountDtoNull = null as AccountDto;
            var accountDtoInvalidToken = new AccountDto { Token = "shortToken" };

            var expectedResult = new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);

            var resultNull = await accountServiceEndPoint.VerifyAccountAsync(accountDtoNull);
            var resultInvalidToken = await accountServiceEndPoint.VerifyAccountAsync(accountDtoInvalidToken);

            Assert.IsTrue(
                !resultNull.IsSuccess && resultNull.MessageResponse == expectedResult.MessageResponse &&
                !resultInvalidToken.IsSuccess && resultInvalidToken.MessageResponse == expectedResult.MessageResponse,
                "Expected VerifyAccountAsync to return an error when AccountDto is null or Token is invalid.");
        }

        [TestMethod]
        public async Task VerifyAccountAsync_ShouldReturnSuccess_WhenValidAccountDtoProvided()
        {
            var accountDto = new AccountDto { Token = new string('a', AccountValidationUtilities.TOKEN_VERIFY_ACCOUNT_SIZE) };
            var expectedResult = new OperationResultDto(true, "Account verified successfully");

            mockAccountService.Setup(service => service.IsVerifyAccount(accountDto)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.VerifyAccountAsync(accountDto);

            Assert.IsTrue(
                result.IsSuccess && result.MessageResponse == expectedResult.MessageResponse,
                "Expected VerifyAccountAsync to return success when a valid AccountDto with a valid token is provided.");
        }

        [TestMethod]
        public async Task VerifyAccountAsync_ShouldReturnError_WhenAccountDtoIsNull()
        {
            var result = await accountServiceEndPoint.VerifyAccountAsync(null);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected account verification to fail with message indicating a null input.");
        }
        [TestMethod]
        public async Task ResendVerificationCodeAsync_ShouldReturnFalse_WhenEmailOrPhoneIsNullOrEmpty()
        {
            var resultNull = await accountServiceEndPoint.ResendVerificationCodeAsync(null);
            var resultEmpty = await accountServiceEndPoint.ResendVerificationCodeAsync(string.Empty);

            Assert.IsTrue(
                !resultNull && !resultEmpty,
                "Expected ResendVerificationCodeAsync to return false when email or phone is null or empty.");
        }

        [TestMethod]
        public async Task ResendVerificationCodeAsync_ShouldReturnTrue_WhenValidEmailOrPhoneProvided()
        {
            var emailOrPhone = "valid@example.com";
            var expectedResult = true;

            mockAccountService.Setup(service => service.ResendVerificationCodeAsync(emailOrPhone)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.ResendVerificationCodeAsync(emailOrPhone);

            Assert.IsTrue(
                result == expectedResult,
                "Expected ResendVerificationCodeAsync to return true when a valid email or phone is provided.");
        }

        [TestMethod]
        public async Task SendVerificationCodeToChangeEmailOrPhone_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var accountDto = new AccountDto { Id = 1, Email = "user@example.com", Token = "validToken", TokenExpiration = DateTime.UtcNow.AddMinutes(30), CurrentSessionId = "session123" };
            var expectedResult = new OperationResultChangeRegisterEmailOrPhone(true, "Verification code sent successfully", EnumChangeAccountRegister.Success);

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(true);
            mockAccountService.Setup(a => a.ChangeEmailOrPhoneInDataBaseAsync(accountDto)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.SendVerificationCodeToChangeEmailOrPhone(accountDto);

            Assert.IsTrue(result.IsSuccess,
                          "Expected verification code to be sent successfully with status 'Success'.");
        }

        [TestMethod]
        public async Task SendVerificationCodeToChangeEmailOrPhone_ShouldReturnError_WhenAccountDtoIsNull()
        {
            var result = await accountServiceEndPoint.SendVerificationCodeToChangeEmailOrPhone(null);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when AccountDto is null.");
        }

        [TestMethod]
        public async Task NeedHelpProblemWithEmailAsync_ShouldReturnFalse_WhenEmailIsNullOrEmpty()
        {
            var resultNull = await accountServiceEndPoint.NeedHelpProblemWithEmailAsync(null);
            var resultEmpty = await accountServiceEndPoint.NeedHelpProblemWithEmailAsync(string.Empty);

            Assert.IsTrue(
                !resultNull && !resultEmpty,
                "Expected NeedHelpProblemWithEmailAsync to return false when email is null or empty.");
        }

        [TestMethod]
        public async Task NeedHelpProblemWithPasswordAsync_ShouldReturnFalse_WhenEmailIsNullOrEmpty()
        {
            var resultNull = await accountServiceEndPoint.NeedHelpProblemWithPasswordAsync(null);
            var resultEmpty = await accountServiceEndPoint.NeedHelpProblemWithPasswordAsync(string.Empty);

            Assert.IsTrue(
                !resultNull && !resultEmpty,
                "Expected NeedHelpProblemWithPasswordAsync to return false when email is null or empty.");
        }

        [TestMethod]
        public async Task NeedHelpProblemWithPasswordAsync_ShouldReturnTrue_WhenValidEmailProvided()
        {
            var email = "valid@example.com";
            var expectedResult = true;

            mockAccountService.Setup(service => service.NeedHelpProblemWithPasswordInDataBase(email)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.NeedHelpProblemWithPasswordAsync(email);

            Assert.IsTrue(
                result == expectedResult,
                "Expected NeedHelpProblemWithPasswordAsync to return true when a valid email is provided.");
        }
        [TestMethod]
        public async Task ChangeForgotPasswordAsync_ShouldReturnFalse_WhenEmailOrPasswordOrTokenIsNullOrEmpty()
        {
            var resultNullEmail = await accountServiceEndPoint.ChangeForgotPasswordAsync(null, "newPassword", "validToken");
            var resultNullPassword = await accountServiceEndPoint.ChangeForgotPasswordAsync("valid@example.com", null, "validToken");
            var resultNullToken = await accountServiceEndPoint.ChangeForgotPasswordAsync("valid@example.com", "newPassword", null);
            var resultEmptyEmail = await accountServiceEndPoint.ChangeForgotPasswordAsync(string.Empty, "newPassword", "validToken");
            var resultEmptyPassword = await accountServiceEndPoint.ChangeForgotPasswordAsync("valid@example.com", string.Empty, "validToken");
            var resultEmptyToken = await accountServiceEndPoint.ChangeForgotPasswordAsync("valid@example.com", "newPassword", string.Empty);

            Assert.IsTrue(
                !resultNullEmail && !resultNullPassword && !resultNullToken && !resultEmptyEmail && !resultEmptyPassword && !resultEmptyToken,
                "Expected ChangeForgotPasswordAsync to return false when email, newPassword or token is null or empty.");
        }
        [TestMethod]
        public async Task ChangePasswordAsync_ShouldReturnError_WhenAccountDtoIsNullOrInvalid()
        {
            var accountDtoNull = null as AccountDto;
            var accountDtoInvalid = new AccountDto { Password = null, Id = null, CurrentSessionId = "invalidSessionId" };

            var expectedResult = new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);

            var resultNull = await accountServiceEndPoint.ChangePasswordAsync(accountDtoNull);
            var resultInvalid = await accountServiceEndPoint.ChangePasswordAsync(accountDtoInvalid);

            Assert.IsTrue(
                !resultNull.IsSuccess && resultNull.MessageResponse == expectedResult.MessageResponse &&
                !resultInvalid.IsSuccess && resultInvalid.MessageResponse == expectedResult.MessageResponse,
                "Expected ChangePasswordAsync to return an error when AccountDto is null or has invalid data.");
        }
        [TestMethod]
        public async Task SendVerificationCodeToChangePassword_ShouldReturnError_WhenAccountDtoIsNullOrInvalid()
        {
            var accountDtoNull = null as AccountDto;
            var accountDtoInvalid = new AccountDto { Token = null, Id = null, CurrentSessionId = "invalidSessionId" };

            var expectedResult = new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);

            var resultNull = await accountServiceEndPoint.SendVerificationCodeToChangePassword(accountDtoNull);
            var resultInvalid = await accountServiceEndPoint.SendVerificationCodeToChangePassword(accountDtoInvalid);

            Assert.IsTrue(
                !resultNull.IsSuccess && resultNull.MessageResponse == expectedResult.MessageResponse &&
                !resultInvalid.IsSuccess && resultInvalid.MessageResponse == expectedResult.MessageResponse,
                "Expected SendVerificationCodeToChangePassword to return an error when AccountDto is null or has invalid data.");
        }

        [TestMethod]
        public async Task SendVerificationCodeToChangePassword_ShouldReturnError_WhenUserIsOffline()
        {
            var accountDto = new AccountDto
            {
                Id = 1,
                Token = "validToken",
                CurrentSessionId = "session123"
            };

            var expectedResult = new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(false);

            var result = await accountServiceEndPoint.SendVerificationCodeToChangePassword(accountDto);

            Assert.IsTrue(
                !result.IsSuccess && result.MessageResponse == expectedResult.MessageResponse,
                "Expected SendVerificationCodeToChangePassword to return an error when user is offline.");
        }


        [TestMethod]
        public async Task ChangePasswordAsync_ShouldReturnError_WhenUserIsOffline()
        {
            var accountDto = new AccountDto
            {
                Id = 1,
                Password = "ValidPassword123",
                CurrentSessionId = "session123"
            };

            var expectedResult = new OperationResultDto(false, LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX);

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(false);

            var result = await accountServiceEndPoint.ChangePasswordAsync(accountDto);

            Assert.IsTrue(
                !result.IsSuccess && result.MessageResponse == expectedResult.MessageResponse,
                "Expected ChangePasswordAsync to return an error when user is offline.");
        }

        [TestMethod]
        public async Task ChangeForgotPasswordAsync_ShouldReturnTrue_WhenValidDataProvided()
        {
            var email = "valid@example.com";
            var newPassword = "newPassword123";
            var token = "validToken";
            var expectedResult = true;

            mockAccountService.Setup(service => service.ChangeForgotPasswordInDataBase(email, newPassword, token)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.ChangeForgotPasswordAsync(email, newPassword, token);

            Assert.IsTrue(
                result == expectedResult,
                "Expected ChangeForgotPasswordAsync to return true when valid email, newPassword and token are provided.");
        }


        [TestMethod]
        public async Task NeedHelpProblemWithEmailAsync_ShouldReturnTrue_WhenValidEmailProvided()
        {
            var email = "valid@example.com";
            var expectedResult = true;

            mockAccountService.Setup(service => service.NeedHelpProblemWithEmailInDataBase(email)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.NeedHelpProblemWithEmailAsync(email);

            Assert.IsTrue(
                result == expectedResult,
                "Expected NeedHelpProblemWithEmailAsync to return true when a valid email is provided.");
        }


        [TestMethod]
        public async Task SendVerificationCodeToChangeEmailOrPhone_ShouldReturnError_WhenEmailAndPhoneNumberAreNull()
        {
            var accountDto = new AccountDto { Id = 1, Token = "validToken", TokenExpiration = DateTime.UtcNow.AddMinutes(30), CurrentSessionId = "session123" };

            var result = await accountServiceEndPoint.SendVerificationCodeToChangeEmailOrPhone(accountDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when both Email and PhoneNumber are null.");
        }

        [TestMethod]
        public async Task SendVerificationCodeToChangeEmailOrPhone_ShouldReturnError_WhenTokenOrTokenExpirationIsNull()
        {
            var accountDto = new AccountDto { Id = 1, Email = "user@example.com", Token = null, CurrentSessionId = "session123" };

            var result = await accountServiceEndPoint.SendVerificationCodeToChangeEmailOrPhone(accountDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when Token or TokenExpiration is null.");
        }

        [TestMethod]
        public async Task SendVerificationCodeToChangeEmailOrPhone_ShouldReturnError_WhenUserIsNotOnline()
        {
            var accountDto = new AccountDto { Id = 1, Email = "user@example.com", Token = "validToken", TokenExpiration = DateTime.UtcNow.AddMinutes(30), CurrentSessionId = "session123" };

            mockProfileService.Setup(p => p.IsOnline((int)accountDto.Id, accountDto.CurrentSessionId)).ReturnsAsync(false);

            var result = await accountServiceEndPoint.SendVerificationCodeToChangeEmailOrPhone(accountDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with status 'UnableToSaveData' when user is not online.");
        }

        [TestMethod]
        public async Task ConsultAccounProfileInformationAsync_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var profileDto = new ProfileDto { Id = 1, PreferredLanguage = "en", CurrentSessionID = "session123" };
            var expectedResult = new OperationResultAccountDto(true, "Profile information retrieved successfully", new AccountDto { Id = 1, Email = "user@example.com" });

            mockProfileService.Setup(p => p.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockAccountService.Setup(a => a.ConsultAccountProfileServiceInDataBase(profileDto)).ReturnsAsync(expectedResult);

            var result = await accountServiceEndPoint.ConsultAccounProfileInformationAsync(profileDto);

            Assert.IsTrue(result.IsSuccess,
                          "Expected profile information to be retrieved successfully.");
        }

        [TestMethod]
        public async Task ConsultAccounProfileInformationAsync_ShouldReturnError_WhenProfileDtoIsNull()
        {
            var result = await accountServiceEndPoint.ConsultAccounProfileInformationAsync(null);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with null AccountDto when ProfileDto is null.");
        }

        [TestMethod]
        public async Task ConsultAccounProfileInformationAsync_ShouldReturnError_WhenIdOrPreferredLanguageIsNull()
        {
            var profileDto = new ProfileDto { Id = null, PreferredLanguage = null, CurrentSessionID = "session123" };

            var result = await accountServiceEndPoint.ConsultAccounProfileInformationAsync(profileDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with null AccountDto when Id or PreferredLanguage is null.");
        }

        [TestMethod]
        public async Task ConsultAccounProfileInformationAsync_ShouldReturnError_WhenUserIsNotOnline()
        {
            var profileDto = new ProfileDto { Id = 1, PreferredLanguage = "en", CurrentSessionID = "session123" };

            mockProfileService.Setup(p => p.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await accountServiceEndPoint.ConsultAccounProfileInformationAsync(profileDto);

            Assert.IsTrue(!result.IsSuccess,
                          "Expected operation to fail with null AccountDto when user is not online.");
        }
    }
}

