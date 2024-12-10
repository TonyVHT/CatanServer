using CatanDataAccess.Domain;
using CatanService.DataTransferObject;
using CatanService.DataTransferObject.Enums;
using CatanService.DataTransferObject.ResultDtos;
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

namespace CatanService.Tests.ServicesTests.ProfileServiceTests
{
    [TestClass]
    public class ProfileServiceEndpointTests
    {
        private ProfileServiceEndpoint profileServiceEndpoint;
        private Mock<IServiceManager> mockServiceManager;
        private Mock<IProfileService> mockProfileService;

        [TestInitialize]
        public void Setup()
        {
            mockServiceManager = new Mock<IServiceManager>();
            mockProfileService = new Mock<IProfileService>();
            mockServiceManager.Setup(sm => sm.ProfileService).Returns(mockProfileService.Object);

            profileServiceEndpoint = new ProfileServiceEndpoint(mockServiceManager.Object);
        }

        [TestMethod]
        public async Task ChangeProfileName_ShouldReturnSuccess_WhenValidDataProvided()
        {
            var profileDto = new ProfileDto { Id = 1, Name = "NewProfileName", PreferredLanguage = "en" };
            var expectedResult = new OperationResultProfileDto(true, "Profile name changed successfully", profileDto, EnumChangeAccountRegister.Success);

            mockProfileService.Setup(ps => ps.ChangeProfileNameInDataBaseAsync(profileDto))
                              .ReturnsAsync(expectedResult);
            mockProfileService.Setup(ps => ps.IsOnline(It.IsAny<int>(), It.IsAny<string>())).ReturnsAsync(true);

            var result = await profileServiceEndpoint.ChangeProfileName(profileDto);

            Assert.IsTrue(result != null && result.IsSuccess && result.ProfileDto.Name == "NewProfileName" &&
                          result.ChangeAccountRegister == EnumChangeAccountRegister.Success,
                          "Expected profile name change to succeed, with updated name and success status.");
        }

        [TestMethod]
        public async Task ChangeProfileName_ShouldReturnFailure_WhenProfileNameAlreadyExists()
        {
            var profileDto = new ProfileDto { Id = 1, Name = "ExistingProfileName", PreferredLanguage = "en" };
            var expectedResult = new OperationResultProfileDto(false, "Profile name already exists", null, EnumChangeAccountRegister.AlreadyExists);

            mockProfileService.Setup(ps => ps.ChangeProfileNameInDataBaseAsync(profileDto))
                              .ReturnsAsync(expectedResult);
            mockProfileService.Setup(ps => ps.IsOnline(It.IsAny<int>(), It.IsAny<string>())).ReturnsAsync(true);

            var result = await profileServiceEndpoint.ChangeProfileName(profileDto);

            Assert.IsTrue(result != null && !result.IsSuccess && result.ProfileDto == null &&
                          result.ChangeAccountRegister == EnumChangeAccountRegister.AlreadyExists,
                          "Expected profile name change to fail with existing name status.");
        }

        [TestMethod]
        public async Task ChangeProfileName_ShouldReturnFailure_WhenProfileDtoIsNull()
        {
            var result = await profileServiceEndpoint.ChangeProfileName(null);

            Assert.IsTrue(result != null && !result.IsSuccess && result.ProfileDto == null &&
                          result.ChangeAccountRegister == EnumChangeAccountRegister.UnableToSaveData,
                          "Expected profile name change to fail with null input and 'UnableToSaveData' status.");
        }

        [TestMethod]
        public async Task AcceptFriendRequestAsync_ShouldReturnTrue_WhenValidDataProvidedAndUserIsOnline()
        {
            var nameFriendToAccept = "FriendName";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.AcceptFriendRequestInDataBaseAsync(nameFriendToAccept, profileDto)).ReturnsAsync(true);

            var result = await profileServiceEndpoint.AcceptFriendRequestAsync(nameFriendToAccept, profileDto);

            Assert.IsTrue(result, "Expected friend request acceptance to succeed.");
        }

        [TestMethod]
        public async Task AcceptFriendRequestAsync_ShouldReturnFalse_WhenNameFriendToAcceptIsNull()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.AcceptFriendRequestAsync(null, profileDto);

            Assert.IsFalse(result, "Expected friend request acceptance to fail with null friend name.");
        }

        [TestMethod]
        public async Task AcceptFriendRequestAsync_ShouldReturnFalse_WhenProfileDtoIsNull()
        {
            var nameFriendToAccept = "FriendName";

            var result = await profileServiceEndpoint.AcceptFriendRequestAsync(nameFriendToAccept, null);

            Assert.IsFalse(result, "Expected friend request acceptance to fail with null profile.");
        }

        [TestMethod]
        public async Task AcceptFriendRequestAsync_ShouldReturnFalse_WhenUserIsNotOnline()
        {
            var nameFriendToAccept = "FriendName";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.AcceptFriendRequestAsync(nameFriendToAccept, profileDto);

            Assert.IsFalse(result, "Expected friend request acceptance to fail when user is not online.");
        }

        [TestMethod]
        public async Task DeleteFriendProfile_ShouldReturnTrue_WhenValidDataProvidedAndUserIsOnline()
        {
            var friendName = "FriendToDelete";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.DeleteFriendProfileInDataBaseAsync(friendName, profileDto)).ReturnsAsync(true);

            var result = await profileServiceEndpoint.DeleteFriendProfile(friendName, profileDto);

            Assert.IsTrue(result, "Expected friend profile deletion to succeed.");
        }

        [TestMethod]
        public async Task DeleteFriendProfile_ShouldReturnFalse_WhenFriendNameIsNull()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.DeleteFriendProfile(null, profileDto);

            Assert.IsFalse(result, "Expected friend profile deletion to fail with null friend name.");
        }

        [TestMethod]
        public async Task DeleteFriendProfile_ShouldReturnFalse_WhenProfileDtoIsNull()
        {
            var friendName = "FriendToDelete";

            var result = await profileServiceEndpoint.DeleteFriendProfile(friendName, null);

            Assert.IsFalse(result, "Expected friend profile deletion to fail with null profile.");
        }

        [TestMethod]
        public async Task DeleteFriendProfile_ShouldReturnFalse_WhenUserIsNotOnline()
        {
            var friendName = "FriendToDelete";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.DeleteFriendProfile(friendName, profileDto);

            Assert.IsFalse(result, "Expected friend profile deletion to fail when user is not online.");
        }

        [TestMethod]
        public async Task GetFriendsListAsync_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var friendsList = new List<ProfileDto> { new ProfileDto { Id = 2, Name = "Friend1" } };
            var expectedResult = new OperationResultProfileListDto(true, "Friends list retrieved successfully", friendsList);

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.GetFriendsListInDataBaseAsync(profileDto)).ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.GetFriendsListAsync(profileDto);

            Assert.IsTrue(result.IsSuccess && result.ProfileDtos != null && result.ProfileDtos.Count == 1,
                          "Expected friends list retrieval to succeed with a non-null ProfileDtos list.");
        }

        [TestMethod]
        public async Task GetFriendsListAsync_ShouldReturnFailure_WhenProfileDtoIsNull()
        {
            var result = await profileServiceEndpoint.GetFriendsListAsync(null);

            Assert.IsTrue(!result.IsSuccess && result.ProfileDtos == null,
                          "Expected friends list retrieval to fail with null ProfileDto.");
        }

        [TestMethod]
        public async Task GetFriendsListAsync_ShouldReturnFailure_WhenProfileDtoIdIsNull()
        {
            var profileDto = new ProfileDto { Id = null, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.GetFriendsListAsync(profileDto);

            Assert.IsTrue(!result.IsSuccess && result.ProfileDtos == null,
                          "Expected friends list retrieval to fail when ProfileDto.Id is null.");
        }

        [TestMethod]
        public async Task GetFriendsListAsync_ShouldReturnFailure_WhenUserIsNotOnline()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.GetFriendsListAsync(profileDto);

            Assert.IsTrue(!result.IsSuccess && result.ProfileDtos == null,
                          "Expected friends list retrieval to fail when user is not online.");
        }
        [TestMethod]
        public async Task GetFriendsPictureAsync_ShouldReturnSuccess_WhenValidDataProvided()
        {
            var profileFriendDto = new ProfileDto { Id = 1, Name = "Friend1" };
            var preferredLanguage = "en";
            var pictureData = new byte[] { 0x20, 0x20 };
            var expectedResult = new OperationResultPictureDto(true, "Picture retrieved successfully", pictureData);

            mockProfileService.Setup(ps => ps.GetFriendPictureInDataBaseAsync(profileFriendDto, preferredLanguage))
                              .ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.GetFriendsPictureAsync(profileFriendDto, preferredLanguage);

            Assert.IsTrue(result.IsSuccess && result.Picture != null && result.Picture.Length == 2,
                          "Expected friend's picture retrieval to succeed with a non-null Picture.");
        }

        [TestMethod]
        public async Task GetFriendsPictureAsync_ShouldReturnFailure_WhenProfileFriendDtoIsNull()
        {
            var preferredLanguage = "en";

            var result = await profileServiceEndpoint.GetFriendsPictureAsync(null, preferredLanguage);

            Assert.IsTrue(!result.IsSuccess && result.Picture == null,
                          "Expected friend's picture retrieval to fail with null ProfileFriendDto.");
        }

        [TestMethod]
        public async Task GetFriendsPictureAsync_ShouldReturnFailure_WhenProfileFriendDtoIdIsNull()
        {
            var profileFriendDto = new ProfileDto { Id = null, Name = "Friend1" };
            var preferredLanguage = "en";

            var result = await profileServiceEndpoint.GetFriendsPictureAsync(profileFriendDto, preferredLanguage);

            Assert.IsTrue(!result.IsSuccess && result.Picture == null,
                          "Expected friend's picture retrieval to fail when ProfileFriendDto.Id is null.");
        }

        [TestMethod]
        public async Task SendFriendRequestAsync_ShouldReturnSuccess_WhenValidDataIsProvided()
        {
            var nameFriendToInvite = "Friend";
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                Name = "User",
                CurrentSessionID = "session123"
            };

            var expectedResult = new OperationResultFriendRequestDto(true, "Request sent successfully", EnumSendFriendRequest.SuccessSave);

            mockProfileService.Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.SendFriendRequestInDataBaseAsync(nameFriendToInvite, profileClientDto)).ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.SendFriendRequestAsync(nameFriendToInvite, profileClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == expectedResult.MessageResponse && result.StatusSendFriendRequest == EnumSendFriendRequest.SuccessSave,
                          "Expected SendFriendRequestAsync to return success with the correct status and message.");
        }

        [TestMethod]
        public async Task SendFriendRequestAsync_ShouldReturnError_WhenFriendNameIsNullOrEmpty()
        {
            var nameFriendToInvite = string.Empty;
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                Name = "User",
                CurrentSessionID = "session123"
            };

            var result = await profileServiceEndpoint.SendFriendRequestAsync(nameFriendToInvite, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.StatusSendFriendRequest == EnumSendFriendRequest.ErrorSaving,
                           "Expected SendFriendRequestAsync to return an error with the correct status when friend name is null or empty.");
        }

        [TestMethod]
        public async Task SendFriendRequestAsync_ShouldReturnError_WhenClientProfileIsNull()
        {
            var nameFriendToInvite = "Friend";

            var result = await profileServiceEndpoint.SendFriendRequestAsync(nameFriendToInvite, null);

            Assert.IsFalse(result.IsSuccess && result.StatusSendFriendRequest == EnumSendFriendRequest.ErrorSaving,
                           "Expected SendFriendRequestAsync to return an error with the correct status when client profile is null.");
        }

        [TestMethod]
        public async Task UploadProfilePictureAsync_ShouldReturnSuccess_WhenValidDataProvided()
        {
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                CurrentSessionID = "session123",
                IsOnline = true
            };

            var imageBytes = new byte[ProfileUtilities.PICTURE_MAX_SIZE - 1];
            var expectedResult = new OperationResultProfileDto(true, "Profile picture uploaded successfully");

            mockProfileService.Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.UploadProfilePictureInDataBaseAsync(profileClientDto, imageBytes)).ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.UploadProfilePictureAsync(profileClientDto, imageBytes);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == expectedResult.MessageResponse,
                          "Expected UploadProfilePictureAsync to return success when valid data is provided.");
        }

        [TestMethod]
        public async Task UploadProfilePictureAsync_ShouldReturnError_WhenProfileIsNull()
        {
            var result = await profileServiceEndpoint.UploadProfilePictureAsync(null, new byte[1024]);

            Assert.IsFalse(result.IsSuccess,
                           "Expected UploadProfilePictureAsync to return error when profile is null.");
        }

        [TestMethod]
        public async Task UploadProfilePictureAsync_ShouldReturnError_WhenImageIsNull()
        {
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                CurrentSessionID = "session123",
                IsOnline = true
            };

            var result = await profileServiceEndpoint.UploadProfilePictureAsync(profileClientDto, null);

            Assert.IsFalse(result.IsSuccess,
                           "Expected UploadProfilePictureAsync to return error when image bytes are null.");
        }

        [TestMethod]
        public async Task UploadProfilePictureAsync_ShouldReturnError_WhenImageSizeIsTooSmall()
        {
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                CurrentSessionID = "session123",
                IsOnline = true
            };

            var imageBytes = new byte[0];

            var result = await profileServiceEndpoint.UploadProfilePictureAsync(profileClientDto, imageBytes);

            Assert.IsFalse(result.IsSuccess,
                           "Expected UploadProfilePictureAsync to return error when image size is too small.");
        }

        [TestMethod]
        public async Task UploadProfilePictureAsync_ShouldReturnError_WhenImageSizeIsTooLarge()
        {
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                CurrentSessionID = "session123",
                IsOnline = true
            };

            var imageBytes = new byte[ProfileUtilities.PICTURE_MAX_SIZE + 1];

            var result = await profileServiceEndpoint.UploadProfilePictureAsync(profileClientDto, imageBytes);

            Assert.IsFalse(result.IsSuccess,
                           "Expected UploadProfilePictureAsync to return error when image size is too large.");
        }

        [TestMethod]
        public async Task SendFriendRequestAsync_ShouldReturnError_WhenFriendNameMatchesClientName()
        {
            var nameFriendToInvite = "User";
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                Name = "User",
                CurrentSessionID = "session123"
            };

            var result = await profileServiceEndpoint.SendFriendRequestAsync(nameFriendToInvite, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.StatusSendFriendRequest == EnumSendFriendRequest.ErrorSaving,
                           "Expected SendFriendRequestAsync to return an error with the correct status when friend name matches client name.");
        }

        [TestMethod]
        public async Task SendFriendRequestAsync_ShouldReturnError_WhenClientIsOffline()
        {
            var nameFriendToInvite = "Friend";
            var profileClientDto = new ProfileDto
            {
                Id = 1,
                Name = "User",
                CurrentSessionID = "session123"
            };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.SendFriendRequestAsync(nameFriendToInvite, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.StatusSendFriendRequest == EnumSendFriendRequest.ErrorSaving,
                           "Expected SendFriendRequestAsync to return an error with the correct status when client is offline.");
        }

        [TestMethod]
        public async Task GetFriendsPictureAsync_ShouldReturnSuccess_WhenValidProfileAndPreferredLanguageIsEmpty()
        {
            var profileFriendDto = new ProfileDto { Id = 1, Name = "Friend1" };
            var preferredLanguage = string.Empty;
            var pictureData = new byte[] { 0x20, 0x20 };
            var expectedResult = new OperationResultPictureDto(true, "Picture retrieved successfully", pictureData);

            mockProfileService.Setup(ps => ps.GetFriendPictureInDataBaseAsync(profileFriendDto, preferredLanguage))
                              .ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.GetFriendsPictureAsync(profileFriendDto, preferredLanguage);

            Assert.IsTrue(result.IsSuccess && result.Picture != null && result.Picture.Length == 2,
                          "Expected friend's picture retrieval to succeed even with an empty preferred language.");
        }

        [TestMethod]
        public async Task GetPendingFriendRequests_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var pendingRequests = new List<ProfileDto> { new ProfileDto { Id = 2, Name = "PendingFriend1" } };
            var expectedResult = new OperationResultProfileListDto(true, "Pending friend requests retrieved successfully", pendingRequests);

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.GetPendingFriendRequestsInDataBaseAsync(profileDto)).ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.GetPendingFriendRequests(profileDto);

            Assert.IsTrue(result.IsSuccess && result.ProfileDtos != null && result.ProfileDtos.Count == 1,
                          "Expected pending friend requests retrieval to succeed with a non-null ProfileDtos list.");
        }

        [TestMethod]
        public async Task GetPendingFriendRequests_ShouldReturnFailure_WhenProfileDtoIsNull()
        {
            var result = await profileServiceEndpoint.GetPendingFriendRequests(null);

            Assert.IsTrue(!result.IsSuccess && result.ProfileDtos == null,
                          "Expected pending friend requests retrieval to fail with null ProfileDto.");
        }

        [TestMethod]
        public async Task GetPendingFriendRequests_ShouldReturnFailure_WhenProfileDtoIdIsNull()
        {
            var profileDto = new ProfileDto { Id = null, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.GetPendingFriendRequests(profileDto);

            Assert.IsTrue(!result.IsSuccess && result.ProfileDtos == null,
                          "Expected pending friend requests retrieval to fail when ProfileDto.Id is null.");
        }

        [TestMethod]
        public async Task GetPendingFriendRequests_ShouldReturnFailure_WhenUserIsNotOnline()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.GetPendingFriendRequests(profileDto);

            Assert.IsTrue(!result.IsSuccess && result.ProfileDtos == null,
                          "Expected pending friend requests retrieval to fail when user is not online.");
        }
        [TestMethod]
        public async Task GetProfilePictureAsync_ShouldReturnSuccess_WhenValidDataProvidedAndUserIsOnline()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var pictureData = new byte[] { 0x20, 0x20 };
            var expectedResult = new OperationResultPictureDto(true, "Picture retrieved successfully", pictureData);

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.GetProfilePictureInDataBaseAsync(profileDto)).ReturnsAsync(expectedResult);

            var result = await profileServiceEndpoint.GetProfilePictureAsync(profileDto);

            Assert.IsTrue(result.IsSuccess && result.Picture != null && result.Picture.Length == 2,
                          "Expected profile picture retrieval to succeed with a non-null Picture.");
        }

        [TestMethod]
        public async Task GetProfilePictureAsync_ShouldReturnFailure_WhenProfileDtoIsNull()
        {
            var result = await profileServiceEndpoint.GetProfilePictureAsync(null);

            Assert.IsTrue(!result.IsSuccess && result.Picture == null,
                          "Expected profile picture retrieval to fail with null ProfileDto.");
        }

        [TestMethod]
        public async Task GetProfilePictureAsync_ShouldReturnFailure_WhenProfileDtoIdIsNull()
        {
            var profileDto = new ProfileDto { Id = null, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.GetProfilePictureAsync(profileDto);

            Assert.IsTrue(!result.IsSuccess && result.Picture == null,
                          "Expected profile picture retrieval to fail when ProfileDto.Id is null.");
        }

        [TestMethod]
        public async Task GetProfilePictureAsync_ShouldReturnFailure_WhenUserIsNotOnline()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.GetProfilePictureAsync(profileDto);

            Assert.IsTrue(!result.IsSuccess && result.Picture == null,
                          "Expected profile picture retrieval to fail when user is not online.");
        }

        [TestMethod]
        public async Task InviteFriendsToGame_ShouldReturnTrue_WhenValidDataProvidedAndUserIsOnline()
        {
            var nameFriendToInvite = "FriendName";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var accessKey = "gameAccessKey";

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.InviteFriendsToGameInDataBaseAsync(nameFriendToInvite, accessKey)).ReturnsAsync(true);

            var result = await profileServiceEndpoint.InviteFriendsToGame(nameFriendToInvite, profileDto, accessKey);

            Console.WriteLine("IsOnline call result: " + mockProfileService.Object.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID).Result);
            Console.WriteLine("InviteFriendsToGameInDataBaseAsync result: " + result);

            Assert.IsTrue(result, "Expected friend invitation to game to succeed.");
        }



        [TestMethod]
        public async Task InviteFriendsToGame_ShouldReturnFalse_WhenNameFriendToInviteIsNull()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var accessKey = "gameAccessKey";

            var result = await profileServiceEndpoint.InviteFriendsToGame(null, profileDto, accessKey);

            Assert.IsFalse(result, "Expected friend invitation to fail when nameFriendToInvite is null.");
        }

        [TestMethod]
        public async Task InviteFriendsToGame_ShouldReturnFalse_WhenAccessKeyIsNull()
        {
            var nameFriendToInvite = "FriendName";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.InviteFriendsToGame(nameFriendToInvite, profileDto, null);

            Assert.IsFalse(result, "Expected friend invitation to fail when accessKey is null.");
        }

        [TestMethod]
        public async Task InviteFriendsToGame_ShouldReturnFalse_WhenProfileDtoIsNull()
        {
            var nameFriendToInvite = "FriendName";
            var accessKey = "gameAccessKey";

            var result = await profileServiceEndpoint.InviteFriendsToGame(nameFriendToInvite, null, accessKey);

            Assert.IsFalse(result, "Expected friend invitation to fail when profileClientDto is null.");
        }

        [TestMethod]
        public async Task InviteFriendsToGame_ShouldReturnFalse_WhenUserIsNotOnline()
        {
            var nameFriendToInvite = "FriendName";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var accessKey = "gameAccessKey";

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.InviteFriendsToGame(nameFriendToInvite, profileDto, accessKey);

            Assert.IsFalse(result, "Expected friend invitation to fail when user is not online.");
        }

        [TestMethod]
        public async Task RejectFriendRequestAsync_ShouldReturnTrue_WhenValidDataProvidedAndUserIsOnline()
        {
            var nameFriendToReject = "FriendToReject";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(true);
            mockProfileService.Setup(ps => ps.RejectFriendRequestInDataBaseAsync(nameFriendToReject, profileDto)).ReturnsAsync(true);

            var result = await profileServiceEndpoint.RejectFriendRequestAsync(nameFriendToReject, profileDto);

            Assert.IsTrue(result, "Expected friend request rejection to succeed.");
        }

        [TestMethod]
        public async Task RejectFriendRequestAsync_ShouldReturnFalse_WhenNameFriendToRejectIsNull()
        {
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            var result = await profileServiceEndpoint.RejectFriendRequestAsync(null, profileDto);

            Assert.IsFalse(result, "Expected friend request rejection to fail when nameFriendToReject is null.");
        }

        [TestMethod]
        public async Task RejectFriendRequestAsync_ShouldReturnFalse_WhenProfileDtoIsNull()
        {
            var nameFriendToReject = "FriendToReject";

            var result = await profileServiceEndpoint.RejectFriendRequestAsync(nameFriendToReject, null);

            Assert.IsFalse(result, "Expected friend request rejection to fail when profileClientDto is null.");
        }

        [TestMethod]
        public async Task RejectFriendRequestAsync_ShouldReturnFalse_WhenUserIsNotOnline()
        {
            var nameFriendToReject = "FriendToReject";
            var profileDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService.Setup(ps => ps.IsOnline((int)profileDto.Id, profileDto.CurrentSessionID)).ReturnsAsync(false);

            var result = await profileServiceEndpoint.RejectFriendRequestAsync(nameFriendToReject, profileDto);

            Assert.IsFalse(result, "Expected friend request rejection to fail when user is not online.");
        }
    }
}