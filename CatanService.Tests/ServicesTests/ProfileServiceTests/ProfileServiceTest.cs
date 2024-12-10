using CatanDataAccess.Domain;
using CatanDataAccess.Repositories;
using CatanService.DataTransferObject;
using CatanService.Helpers;
using CatanService.Services;
using DataTransferObject.Enums;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System.IO;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;

namespace CatanService.Tests.ServicesTests.ProfileServiceTests
{
    [TestClass]
    public class ProfileServiceTests
    {
        private Mock<IRepositoryManager> mockRepositoryManager;
        private Mock<IServiceManager> mockServiceManager;
        private ProfileService profileService;

        [TestInitialize]
        public void Setup()
        {
            mockRepositoryManager = new Mock<IRepositoryManager>();
            mockServiceManager = new Mock<IServiceManager>();

            profileService = new ProfileService(mockRepositoryManager.Object, mockServiceManager.Object);
        }

        [TestMethod]
        public async Task ChangeProfileNameInDataBaseAsync_ShouldReturnError_WhenProfileNameAlreadyExists()
        {
            var profileClientDto = new ProfileDto
            {
                Name = "ExistingName",
                PreferredLanguage = "en"
            };

            mockRepositoryManager.Setup(r => r.ProfileRepository.IsProfileNameRegisteredAsync(profileClientDto.Name)).ReturnsAsync(true);

            var result = await profileService.ChangeProfileNameInDataBaseAsync(profileClientDto);

            Assert.IsTrue(!result.IsSuccess && result.ChangeAccountRegister == EnumChangeAccountRegister.AlreadyExists && result.MessageResponse == LanguageUtilities.MessageDataBaseUnableToLoad(profileClientDto.PreferredLanguage),
                          "Expected method to return error when the profile name already exists.");
        }

        [TestMethod]
        public async Task ChangeProfileNameInDataBaseAsync_ShouldReturnSuccess_WhenProfileNameIsChangedSuccessfully()
        {
            var profileClientDto = new ProfileDto
            {
                Name = "NewNamell",
                PreferredLanguage = "en",
                Id = 6

            };

            mockRepositoryManager.Setup(r => r.ProfileRepository.IsProfileNameRegisteredAsync(profileClientDto.Name)).ReturnsAsync(false);
            mockRepositoryManager.Setup(r => r.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id)).ReturnsAsync(new Profile { Id = (int)profileClientDto.Id });

            var result = await profileService.ChangeProfileNameInDataBaseAsync(profileClientDto);

            Assert.IsTrue(result.IsSuccess && result.ChangeAccountRegister == EnumChangeAccountRegister.Success && result.MessageResponse == LanguageUtilities.MessageDataBaseSuccessFullySave(profileClientDto.PreferredLanguage),
                          "Expected method to return success when the profile name is changed successfully.");
        }

        [TestMethod]
        public async Task IsValidProfileName_ShouldReturnTrue_WhenNameIsValid()
        {
            var validName = "ValidName";

            var result = await profileService.IsValidProfileName(validName);

            Assert.IsTrue(result, "Expected IsValidProfileName to return true when the name is valid.");
        }

        [TestMethod]
        public async Task IsValidProfileName_ShouldReturnFalse_WhenNameIsNullOrEmpty()
        {
            var invalidName = string.Empty;

            var result = await profileService.IsValidProfileName(invalidName);

            Assert.IsFalse(result, "Expected IsValidProfileName to return false when the name is null or empty.");
        }


        [TestMethod]
        public async Task IsValidProfileName_ShouldReturnFalse_WhenNameIsTooShort()
        {
            var shortName = "Ab";

            var result = await profileService.IsValidProfileName(shortName);

            Assert.IsFalse(result, "Expected IsValidProfileName to return false when the name is too short.");
        }

        [TestMethod]
        public async Task IsValidProfileName_ShouldReturnFalse_WhenNameIsTooLong()
        {
            var longName = new string('A', AccountValidationUtilities.USERNAME_MAX_LENGTH + 1);

            var result = await profileService.IsValidProfileName(longName);

            Assert.IsFalse(result, "Expected IsValidProfileName to return false when the name is too long.");
        }

        [TestMethod]
        public async Task IsValidProfileName_ShouldReturnFalse_WhenNameDoesNotMatchRegex()
        {
            var invalidName = "Invalid!Name";

            var result = await profileService.IsValidProfileName(invalidName);

            Assert.IsFalse(result, "Expected IsValidProfileName to return false when the name does not match the regex.");
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnTrue_WhenTimeDifferenceIsWithinLimit()
        {
            var lastActivity = DateTime.UtcNow.AddMinutes(-5);
            var newActivity = DateTime.UtcNow;
            int timeLimit = 10;

            var result = profileService.IsActiveWithinTimeLimite(lastActivity, newActivity, timeLimit);

            Assert.IsTrue(result, "Expected IsActiveWithinTimeLimite to return true when time difference is within the limit.");
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenTimeDifferenceExceedsLimit()
        {
            var lastActivity = DateTime.UtcNow.AddMinutes(-15);
            var newActivity = DateTime.UtcNow;
            int timeLimit = 10;

            var result = profileService.IsActiveWithinTimeLimite(lastActivity, newActivity, timeLimit);

            Assert.IsFalse(result, "Expected IsActiveWithinTimeLimite to return false when time difference exceeds the limit.");
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenLastActivityIsNull()
        {
            DateTime? lastActivity = null;
            var newActivity = DateTime.UtcNow;
            int timeLimit = 10;

            var result = profileService.IsActiveWithinTimeLimite(lastActivity, newActivity, timeLimit);

            Assert.IsFalse(result, "Expected IsActiveWithinTimeLimite to return false when lastActivity is null.");
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenNewActivityIsNull()
        {
            var lastActivity = DateTime.UtcNow.AddMinutes(-5);
            DateTime? newActivity = null;
            int timeLimit = 10;

            var result = profileService.IsActiveWithinTimeLimite(lastActivity, newActivity, timeLimit);

            Assert.IsFalse(result, "Expected IsActiveWithinTimeLimite to return false when newActivity is null.");
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenBothDatesAreNull()
        {
            DateTime? lastActivity = null;
            DateTime? newActivity = null;
            int timeLimit = 10;

            var result = profileService.IsActiveWithinTimeLimite(lastActivity, newActivity, timeLimit);

            Assert.IsFalse(result, "Expected IsActiveWithinTimeLimite to return false when both dates are null.");
        }

        [TestMethod]
        public void ConvertFriendListIntoFriendListDto_ShouldReturnFriendListDto_WhenInputIsValid()
        {
            var friendList = new List<Profile>
        {
            new Profile { Id = 1, Name = "Friend1" },
            new Profile { Id = 2, Name = "Friend2" },
            new Profile { Id = 3, Name = "Friend3" }
        };

            var result = friendList.ToList();

            Assert.IsTrue(result.Count == friendList.Count &&
                          result.TrueForAll(dto => friendList.Exists(f => f.Id == dto.Id && f.Name == dto.Name)),
                          "Expected ConvertFriendListIntoFriendListDto to return a list of ProfileDto matching the input friend list.");
        }

        [TestMethod]
        public void ConvertFriendListIntoFriendListDto_ShouldReturnEmptyList_WhenInputIsEmpty()
        {
            var friendList = new List<Profile>();

            var result = friendList.ToList();

            Assert.IsTrue(result.Count == 0, "Expected ConvertFriendListIntoFriendListDto to return an empty list when input is empty.");
        }


        [TestMethod]
        public void ConvertFriendListIntoFriendListDto_ShouldThrowException_WhenInputIsNull()
        {
            List<Profile> friendList = null;

            Assert.ThrowsException<ArgumentNullException>(() => friendList.ToList(),
                                                          "Expected ConvertFriendListIntoFriendListDto to throw ArgumentNullException when input is null.");
        }

        [TestMethod]
        public async Task ChangeProfileNameInDataBaseAsync_ShouldReturnError_WhenSaveProfileNameFails()
        {
            var profileClientDto = new ProfileDto
            {
                Name = "NewName",
                PreferredLanguage = "en"
            };

            mockRepositoryManager.Setup(r => r.ProfileRepository.IsProfileNameRegisteredAsync(profileClientDto.Name)).ReturnsAsync(false);
 
            var result = await profileService.ChangeProfileNameInDataBaseAsync(profileClientDto);

            Assert.IsTrue(!result.IsSuccess && result.ChangeAccountRegister == EnumChangeAccountRegister.UnableToSaveData && result.MessageResponse == LanguageUtilities.MessageDataBaseUnableToLoad(profileClientDto.PreferredLanguage),
                          "Expected method to return error when saving the profile name fails.");
        }
    }

}