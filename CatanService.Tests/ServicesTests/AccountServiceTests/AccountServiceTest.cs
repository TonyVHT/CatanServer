using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System.Threading.Tasks;
using CatanService.Services;
using CatanDataAccess.Repositories; 
using CatanService.DataTransferObject;
using System.Text.RegularExpressions;
using System.Data.Entity;
using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using DataTransferObject.Enums;
using CatanService.Helpers;
using CatanDataAccess.Repositories.AccountRepositories;
using System;
namespace CatanService.Tests
{
    [TestClass]
    internal class AccountServiceTests
    {
        private Mock<IRepositoryManager> mockRepositoryManager;
        private Mock<IServiceManager> mockServiceManager;
        private AccountService accountService;
        private Mock<IAccountRepository> mockAccountRepository;

        [TestInitialize]
        public void Setup()
        {
            mockRepositoryManager = new Mock<IRepositoryManager>();
            mockServiceManager = new Mock<IServiceManager>();
            mockAccountRepository = new Mock<IAccountRepository>();
            mockRepositoryManager.Setup(r => r.AccountRepository).Returns(mockAccountRepository.Object);
            accountService = new AccountService(mockRepositoryManager.Object, mockServiceManager.Object);
        }


        [TestMethod]
        public async Task CreateAccountInDataBaseAsync_ShouldReturnError_WhenPasswordIsInvalid()
        {
            var accountDto = new AccountDto
            {
                Email = "test@example.com",
                Password = "invalid)9",
                PreferredLanguage = "en",
                Name = "ValidName",
                PhoneNumber = "123456789"
            };

            mockServiceManager.Setup(s => s.ProfileService.IsValidProfileName(It.IsAny<string>())).ReturnsAsync(true);

            var result = await accountService.CreateAccountInDataBaseAsync(accountDto);

            Assert.IsTrue(!result.IsSuccess && result.status == EnumCreateAccountStatus.ErrorSaving,
                          "Expected: IsSuccess = false and status = ErrorSaving");
        }

        [TestMethod]
        public async Task CreateAccountInDataBaseAsync_ShouldReturnError_WhenProfileNameIsInvalid()
        {
            var accountDto = new AccountDto
            {
                Email = "test@example.com",
                Password = "ValidPassword1",
                PreferredLanguage = "en",
                Name = "InvalidName(*",
                PhoneNumber = "123456789"
            };

            mockServiceManager.Setup(s => s.ProfileService.IsValidProfileName(It.IsAny<string>())).ReturnsAsync(false);
            var result = await accountService.CreateAccountInDataBaseAsync(accountDto);

            Assert.IsTrue(!result.IsSuccess && result.status == EnumCreateAccountStatus.ErrorSaving,
                          "Expected: IsSuccess = false and status = ErrorSaving due to invalid profile name");
        }

        [TestMethod]
        public void IsValidAccountPassword_ShouldReturnFalse_WhenPasswordIsNull()
        {
            string password = null;

            var result = AccountService.IsValidAccountPassword(password);

            Assert.IsFalse(result, "Expected IsValidAccountPassword to return false when the password is null.");
        }

        [TestMethod]
        public void IsValidAccountPassword_ShouldReturnFalse_WhenPasswordIsEmpty()
        {
            string password = string.Empty;

            var result = AccountService.IsValidAccountPassword(password);

            Assert.IsFalse(result, "Expected IsValidAccountPassword to return false when the password is empty.");
        }

        [TestMethod]
        public void IsValidAccountPassword_ShouldReturnFalse_WhenPasswordIsShorterThanMinimumLength()
        {
            string password = "short";

            var result = AccountService.IsValidAccountPassword(password);

            Assert.IsFalse(result, "Expected IsValidAccountPassword to return false when the password is shorter than the minimum length.");
        }

        [TestMethod]
        public void IsValidAccountPassword_ShouldReturnFalse_WhenPasswordIsLongerThanMaximumLength()
        {
            string password = new string('a', AccountValidationUtilities.PASSWORD_MAX_LENGTH + 1);

            var result = AccountService.IsValidAccountPassword(password);

            Assert.IsFalse(result, "Expected IsValidAccountPassword to return false when the password exceeds the maximum length.");
        }

        [TestMethod]
        public void IsValidAccountPassword_ShouldReturnFalse_WhenPasswordDoesNotMatchRegex()
        {
            string password = "invalid_password"; // Assuming it doesn't match the regex

            var result = AccountService.IsValidAccountPassword(password);

            Assert.IsFalse(result, "Expected IsValidAccountPassword to return false when the password does not match the regex.");
        }
        [TestMethod]
        public void IsValidAccountEmail_ShouldReturnFalse_WhenEmailIsNull()
        {
            string email = null;

            var result = AccountService.IsValidAccountEmail(email);

            Assert.IsFalse(result, "Expected IsValidAccountEmail to return false when the email is null.");
        }
        [TestMethod]
        public void IsValidAccountPhoneNumber_ShouldReturnFalse_WhenPhoneNumberIsNull()
        {
            string phoneNumber = null;

            var result = AccountService.IsValidAccountPhoneNumber(phoneNumber);

            Assert.IsFalse(result, "Expected IsValidAccountPhoneNumber to return false when the phone number is null.");
        }

        [TestMethod]
        public void IsValidAccountPhoneNumber_ShouldReturnFalse_WhenPhoneNumberIsEmpty()
        {
            string phoneNumber = string.Empty;

            var result = AccountService.IsValidAccountPhoneNumber(phoneNumber);

            Assert.IsFalse(result, "Expected IsValidAccountPhoneNumber to return false when the phone number is empty.");
        }
        [TestMethod]
        public async Task GetProfileByName_ShouldReturnProfileDto_WhenProfileExists()
        {
            // Arrange
            var accountName = "TestUser";
            var mockProfile = new Profile { Name = accountName, Id = 1 };
            var expectedProfileDto = new ProfileDto { Name = accountName, Id = 1 };

            // Setup mock to return a valid profile record
            mockRepositoryManager.Setup(r => r.ProfileRepository.GetProfileByNameAsync(accountName))
                                 .ReturnsAsync(mockProfile);

            // Act
            var result = await accountService.GetProfileByName(accountName);

            // Assert
            Assert.IsNotNull(result, "Expected profile DTO to be returned.");
            Assert.AreEqual(expectedProfileDto.Name, result.Name, "Expected profile name to match.");
            Assert.AreEqual(expectedProfileDto.Id, result.Id, "Expected profile ID to match.");
        }

        [TestMethod]
        public async Task GetProfileByName_ShouldReturnEmptyProfileDto_WhenProfileDoesNotExist()
        {
            var accountName = "NonExistentUser";

            mockRepositoryManager.Setup(r => r.ProfileRepository.GetProfileByNameAsync(accountName))
                                 .ReturnsAsync((Profile)null);

            var result = await accountService.GetProfileByName(accountName);

            Assert.IsTrue(result != null && result.Id == 0 && result.Name == null, "Expected profile DTO to be empty when profile does not exist.");
        }

        [TestMethod]
        public void IsValidAccountPhoneNumber_ShouldReturnFalse_WhenPhoneNumberLengthIsTooShort()
        {
            string phoneNumber = "+12345"; 

            var result = AccountService.IsValidAccountPhoneNumber(phoneNumber);

            Assert.IsFalse(result, "Expected IsValidAccountPhoneNumber to return false when the phone number is too short.");
        }

        [TestMethod]
        public void IsValidAccountPhoneNumber_ShouldReturnFalse_WhenPhoneNumberLengthIsTooLong()
        {
            string phoneNumber = "+123456789012345";

            var result = AccountService.IsValidAccountPhoneNumber(phoneNumber);

            Assert.IsFalse(result, "Expected IsValidAccountPhoneNumber to return false when the phone number is too long.");
        }

        [TestMethod]
        public void IsValidAccountPhoneNumber_ShouldReturnFalse_WhenPhoneNumberDoesNotMatchRegex()
        {
            string phoneNumber = "+123-abc-7890";  

            var result = AccountService.IsValidAccountPhoneNumber(phoneNumber);

            Assert.IsFalse(result, "Expected IsValidAccountPhoneNumber to return false when the phone number does not match the valid pattern.");
        }

        [TestMethod]
        public void IsValidAccountPhoneNumber_ShouldReturnTrue_WhenPhoneNumberIsValid()
        {
            string phoneNumber = "+1234567890";  

            var result = AccountService.IsValidAccountPhoneNumber(phoneNumber);

            Assert.IsTrue(result, "Expected IsValidAccountPhoneNumber to return true when the phone number is valid.");
        }

        [TestMethod]
        public async Task SaveNewEmailOrPhone_ShouldReturnTrue_WhenEmailIsUpdated()
        {
            var accountDto = new AccountDto { Id = 1, Email = "newemail@example.com" };
            var accountRecord = new Account { Id = 1, Email = "oldemail@example.com" };

            mockAccountRepository.Setup(r => r.FindEntityByIdAsync((int)accountDto.Id)).ReturnsAsync(accountRecord);

            var result = await accountService.SaveNewEmailOrPhone(accountDto);

            Assert.IsTrue(result && accountRecord.Email == accountDto.Email, "Expected email to be updated and the method to return true.");
        }

        [TestMethod]
        public async Task SaveNewEmailOrPhone_ShouldReturnTrue_WhenPhoneNumberIsUpdated()
        {
            var accountDto = new AccountDto { Id = 1, PhoneNumber = "1234567890" };
            var accountRecord = new Account { Id = 1, PhoneNumber = "0987654321" };

            mockAccountRepository.Setup(r => r.FindEntityByIdAsync((int)accountDto.Id)).ReturnsAsync(accountRecord);

            var result = await accountService.SaveNewEmailOrPhone(accountDto);

            Assert.IsTrue(result && accountRecord.PhoneNumber == accountDto.PhoneNumber, "Expected phone number to be updated and the method to return true.");
        }
        [TestMethod]
        public async Task GetProfileAccountInformation_ShouldReturnAccountDto_WhenAccountExists()
        {
            var idProfile = 1;
            var accountRecord = new Account
            {
                Id = idProfile,
                Email = "testuser@example.com",
                PhoneNumber = "1234567890"
            };

            mockAccountRepository.Setup(r => r.FindEntityByIdAsync(idProfile)).ReturnsAsync(accountRecord);

            var result = await accountService.GetProfileAccountInformation(idProfile);

            Assert.IsTrue(result != null && result.Email == accountRecord.Email && result.PhoneNumber == accountRecord.PhoneNumber,
                          "Expected AccountDto to match the account information when account exists.");
        }

        [TestMethod]
        public async Task GetProfileAccountInformation_ShouldReturnNull_WhenAccountDoesNotExist()
        {
            var idProfile = 1;

            mockAccountRepository.Setup(r => r.FindEntityByIdAsync(idProfile)).ReturnsAsync((Account)null);

            var result = await accountService.GetProfileAccountInformation(idProfile);

            Assert.IsNull(result, "Expected method to return null when account does not exist.");
        }
        [TestMethod]
        public async Task SaveNewEmailOrPhone_ShouldReturnFalse_WhenAccountDoesNotExist()
        {
            var accountDto = new AccountDto { Id = 1, Email = "newemail@example.com" };

            mockAccountRepository.Setup(r => r.FindEntityByIdAsync((int)accountDto.Id)).ReturnsAsync((Account)null);

            var result = await accountService.SaveNewEmailOrPhone(accountDto);

            Assert.IsFalse(result, "Expected method to return false when the account does not exist.");
        }

        [TestMethod]
        public async Task SaveNewEmailOrPhone_ShouldReturnFalse_WhenNoEmailOrPhoneProvided()
        {
            var accountDto = new AccountDto { Id = 1 };
            var accountRecord = new Account { Id = 1, Email = "oldemail@example.com", PhoneNumber = "0987654321" };

            mockAccountRepository.Setup(r => r.FindEntityByIdAsync((int)accountDto.Id)).ReturnsAsync(accountRecord);

            var result = await accountService.SaveNewEmailOrPhone(accountDto);

            Assert.IsFalse(result && accountRecord.Email == "oldemail@example.com" && accountRecord.PhoneNumber == "0987654321", "Expected method to return false when no email or phone is provided.");
        }

        [TestMethod]
        public void IsValidAccountEmail_ShouldReturnFalse_WhenEmailIsEmpty()
        {
            string email = string.Empty;

            var result = AccountService.IsValidAccountEmail(email);

            Assert.IsFalse(result, "Expected IsValidAccountEmail to return false when the email is empty.");
        }

        [TestMethod]
        public void IsValidAccountEmail_ShouldReturnFalse_WhenEmailIsWhitespace()
        {
            string email = "   ";

            var result = AccountService.IsValidAccountEmail(email);

            Assert.IsFalse(result, "Expected IsValidAccountEmail to return false when the email is just whitespace.");
        }

        [TestMethod]
        public void IsValidAccountEmail_ShouldReturnFalse_WhenEmailDoesNotMatchRegex()
        {
            string email = "invalid-email.com";

            var result = AccountService.IsValidAccountEmail(email);

            Assert.IsFalse(result, "Expected IsValidAccountEmail to return false when the email does not match the valid email pattern.");
        }

        [TestMethod]
        public void IsValidAccountEmail_ShouldReturnFalse_WhenEmailHasInvalidDotsOrDashes()
        {
            string email = "user..example@email.com";

            var result = AccountService.IsValidAccountEmail(email);

            Assert.IsFalse(result, "Expected IsValidAccountEmail to return false when the email has invalid dots or dashes.");
        }

        [TestMethod]
        public void IsValidAccountEmail_ShouldReturnTrue_WhenEmailIsValid()
        {
            string email = "user@example.com";

            var result = AccountService.IsValidAccountEmail(email);

            Assert.IsTrue(result, "Expected IsValidAccountEmail to return true when the email is valid.");
        }
        [TestMethod]
        public void IsValidAccountPassword_ShouldReturnTrue_WhenPasswordIsValid()
        {
            string password = "TonyVillegas_24"; // Assuming it matches the regex and length is valid

            var result = AccountService.IsValidAccountPassword(password);

            Assert.IsTrue(result, "Expected IsValidAccountPassword to return true when the password is valid.");
        }
        [TestMethod]
        public void IsValidLanguage_ShouldReturnFalse_WhenLanguageIsNull()
        {
            string language = null;

            var result = AccountService.IsValidLanguage(language);

            Assert.IsFalse(result, "Expected IsValidLanguage to return false when the language is null.");
        }
        [TestMethod]
        public void DiferenceBetweenDates_ShouldReturnTrue_WhenTimeDifferenceIsWithinLimit()
        {
            var dateTimeExpiricy = DateTime.UtcNow.AddHours(-1);
            var dateTimeClient = DateTime.UtcNow;

            var result = AccountService.DiferenceBetweenDates(dateTimeExpiricy, dateTimeClient);

            Assert.IsTrue(result, "Expected the time difference to be within the allowed limit.");
        }

        [TestMethod]
        public void IsValidLanguage_ShouldReturnFalse_WhenLanguageIsEmpty()
        {
            string language = string.Empty;

            var result = AccountService.IsValidLanguage(language);

            Assert.IsFalse(result, "Expected IsValidLanguage to return false when the language is empty.");
        }

        [TestMethod]
        public void IsValidLanguage_ShouldReturnTrue_WhenLanguageIsNotEmpty()
        {
            string language = "en";

            var result = AccountService.IsValidLanguage(language);

            Assert.IsTrue(result, "Expected IsValidLanguage to return true when the language is not empty.");
        }
    }
}