using CatanService.DataTransferObject;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.DataTransferObject.GamePlayDto.Resources;
using CatanService.DataTransferObject.PlayerDtos;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.EndPoint;
using CatanService.Helpers;
using CatanService.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Tests.ServicesTests.GameServicesTests
{
    [TestClass]
    public class GameServiceEndpointTests
    {
        private Mock<IServiceManager> mockServiceManager;
        private Mock<IProfileService> mockProfileService;
        private Mock<IGameService> mockGameService;
        private GameServiceEndpoint gameServiceEndpoint;
        private Mock<IGuestAccountService> mockGuestAccountService;

        [TestInitialize]
        public void Setup()
        {
            mockServiceManager = new Mock<IServiceManager>();
            mockProfileService = new Mock<IProfileService>();
            mockGameService = new Mock<IGameService>();
            mockGuestAccountService = new Mock<IGuestAccountService>();

            mockServiceManager.Setup(sm => sm.ProfileService).Returns(mockProfileService.Object);
            mockServiceManager.Setup(sm => sm.GuestAccountService).Returns(mockGuestAccountService.Object);
            mockServiceManager.Setup(sm => sm.GameService).Returns(mockGameService.Object);

            gameServiceEndpoint = new GameServiceEndpoint(mockServiceManager.Object);
        }
        [TestMethod]
        public async Task VoteExpelPlayer_ShouldReturnTrue_WhenInputsAreValid()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Cheating" };
            var idPlayer = 1;
            var gameClientDto = new GameDto { Id = 2 };

            mockGameService
                .Setup(gs => gs.VoteExpelPlayerInDataBase(expelPlayerDto, idPlayer, gameClientDto))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.VoteExpelPlayer(expelPlayerDto, idPlayer, gameClientDto);

            Assert.IsTrue(result, "Expected VoteExpelPlayer to return true when inputs are valid.");
        }

        [TestMethod]
        public async Task VoteExpelPlayer_ShouldReturnFalse_WhenIdPlayerIsZero()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Cheating" };
            var idPlayer = 0; 
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.VoteExpelPlayer(expelPlayerDto, idPlayer, gameClientDto);

            Assert.IsFalse(result, "Expected VoteExpelPlayer to return false when idPlayer is zero.");
        }

        [TestMethod]
        public async Task VoteExpelPlayer_ShouldReturnFalse_WhenGameClientDtoIsNull()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Cheating" };
            var idPlayer = 1;
            GameDto gameClientDto = null; 

            var result = await gameServiceEndpoint.VoteExpelPlayer(expelPlayerDto, idPlayer, gameClientDto);

            Assert.IsFalse(result, "Expected VoteExpelPlayer to return false when gameClientDto is null.");
        }

        [TestMethod]
        public async Task VoteExpelPlayer_ShouldReturnFalse_WhenGameClientDtoIdIsZero()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Cheating" };
            var idPlayer = 1;
            var gameClientDto = new GameDto { Id = 0 }; 

            var result = await gameServiceEndpoint.VoteExpelPlayer(expelPlayerDto, idPlayer, gameClientDto);

            Assert.IsFalse(result, "Expected VoteExpelPlayer to return false when gameClientDto.Id is zero.");
        }

        [TestMethod]
        public async Task VoteExpelPlayer_ShouldReturnFalse_WhenExpelPlayerDtoIsNull()
        {
            ExpelPlayerDto expelPlayerDto = null; 
            var idPlayer = 1;
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.VoteExpelPlayer(expelPlayerDto, idPlayer, gameClientDto);

            Assert.IsFalse(result, "Expected VoteExpelPlayer to return false when expelPlayerDto is null.");
        }

        [TestMethod]
        public async Task QuitGameAsync_ShouldReturnSuccess_WhenGameAndProfileAreValid()
        {
            var gameClientDto = new GameDto { Id = 1 };
            var profileClientDto = new ProfileDto { Id = 2, CurrentSessionID = "session123" };
            var expectedResult = new OperationResultDto(true, "Quit game successfully");

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.QuitGameInDatabaseAsync(gameClientDto, profileClientDto))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.QuitGameAsync(gameClientDto, profileClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Quit game successfully",
                          "Expected QuitGameAsync to return success when game and profile are valid.");
        }
        [TestMethod]
        public async Task ExpelPlayerAsAdmin_ShouldReturnTrue_WhenInputsAreValid()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Violation of rules" };
            var idAdmin = 1;
            var gameClientDto = new GameDto { Id = 2 };

            mockGameService
                .Setup(gs => gs.ExpelPlayerAsAdminInDataBase(expelPlayerDto, gameClientDto, idAdmin))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.ExpelPlayerAsAdmin(expelPlayerDto, idAdmin, gameClientDto);

            Assert.IsTrue(result, "Expected ExpelPlayerAsAdmin to return true when inputs are valid.");
        }

        [TestMethod]
        public async Task ExpelPlayerAsAdmin_ShouldReturnFalse_WhenGameClientDtoIsNull()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Violation of rules" };
            var idAdmin = 1;
            GameDto gameClientDto = null; 

            var result = await gameServiceEndpoint.ExpelPlayerAsAdmin(expelPlayerDto, idAdmin, gameClientDto);

            Assert.IsFalse(result, "Expected ExpelPlayerAsAdmin to return false when gameClientDto is null.");
        }

        [TestMethod]
        public async Task ExpelPlayerAsAdmin_ShouldReturnFalse_WhenGameClientDtoIdIsZero()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Violation of rules" };
            var idAdmin = 1;
            var gameClientDto = new GameDto { Id = 0 }; 

            var result = await gameServiceEndpoint.ExpelPlayerAsAdmin(expelPlayerDto, idAdmin, gameClientDto);

            Assert.IsFalse(result, "Expected ExpelPlayerAsAdmin to return false when gameClientDto.Id is zero.");
        }

        [TestMethod]
        public async Task ExpelPlayerAsAdmin_ShouldReturnFalse_WhenIdAdminIsZero()
        {
            var expelPlayerDto = new ExpelPlayerDto { Reason = "Violation of rules" };
            var idAdmin = 0; 
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.ExpelPlayerAsAdmin(expelPlayerDto, idAdmin, gameClientDto);

            Assert.IsFalse(result, "Expected ExpelPlayerAsAdmin to return false when idAdmin is zero.");
        }

        [TestMethod]
        public async Task ExpelPlayerAsAdmin_ShouldReturnFalse_WhenExpelPlayerDtoIsNull()
        {
            ExpelPlayerDto expelPlayerDto = null; 
            var idAdmin = 1;
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.ExpelPlayerAsAdmin(expelPlayerDto, idAdmin, gameClientDto);

            Assert.IsFalse(result, "Expected ExpelPlayerAsAdmin to return false when expelPlayerDto is null.");
        }

        [TestMethod]
        public async Task QuitGameAsync_ShouldReturnError_WhenProfileIsOffline()
        {
            var gameClientDto = new GameDto { Id = 1 };
            var profileClientDto = new ProfileDto { Id = 2, CurrentSessionID = "session123" };

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.QuitGameAsync(gameClientDto, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsync to return error when the profile is offline.");
        }

        [TestMethod]
        public async Task QuitGameAsync_ShouldReturnError_WhenGameDtoIsNull()
        {
            GameDto gameClientDto = null;
            var profileClientDto = new ProfileDto { Id = 2, CurrentSessionID = "session123" };

            var result = await gameServiceEndpoint.QuitGameAsync(gameClientDto, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsync to return error when gameClientDto is null.");
        }

        [TestMethod]
        public async Task QuitGameAsync_ShouldReturnError_WhenProfileDtoIsNull()
        {
            var gameClientDto = new GameDto { Id = 1 };
            ProfileDto profileClientDto = null;

            var result = await gameServiceEndpoint.QuitGameAsync(gameClientDto, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsync to return error when profileClientDto is null.");
        }

        [TestMethod]
        public async Task QuitGameAsync_ShouldReturnError_WhenGameIdIsNull()
        {
            var gameClientDto = new GameDto { Id = null };
            var profileClientDto = new ProfileDto { Id = 2, CurrentSessionID = "session123" };

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.QuitGameAsync(gameClientDto, profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsync to return error when gameClientDto.Id is null.");
        }
        [TestMethod]
        public async Task QuitGameAsaGuestAccountAsync_ShouldReturnSuccess_WhenGameAndGuestAccountAreValid()
        {
            var gameClientDto = new GameDto { Id = 1 };
            var guestAccountClientDto = new GuestAccountDto { Id = 2 };
            var expectedResult = new OperationResultDto(true, "Quit game successfully");

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount((int)guestAccountClientDto.Id))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.QuitGameAsaGuestAccountInDatabaseAsync(gameClientDto, guestAccountClientDto))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.QuitGameAsaGuestAccountAsync(gameClientDto, guestAccountClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Quit game successfully",
                          "Expected QuitGameAsaGuestAccountAsync to return success when game and guest account are valid.");
        }

        [TestMethod]
        public async Task QuitGameAsaGuestAccountAsync_ShouldReturnError_WhenGuestAccountIsOffline()
        {
            var gameClientDto = new GameDto { Id = 1 };
            var guestAccountClientDto = new GuestAccountDto { Id = 2 };

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount((int)guestAccountClientDto.Id))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.QuitGameAsaGuestAccountAsync(gameClientDto, guestAccountClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsaGuestAccountAsync to return error when guest account is offline.");
        }

        [TestMethod]
        public async Task QuitGameAsaGuestAccountAsync_ShouldReturnError_WhenGameDtoIsNull()
        {
            GameDto gameClientDto = null;
            var guestAccountClientDto = new GuestAccountDto { Id = 2 };

            var result = await gameServiceEndpoint.QuitGameAsaGuestAccountAsync(gameClientDto, guestAccountClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsaGuestAccountAsync to return error when gameClientDto is null.");
        }

        [TestMethod]
        public async Task QuitGameAsaGuestAccountAsync_ShouldReturnError_WhenGuestAccountDtoIsNull()
        {
            var gameClientDto = new GameDto { Id = 1 };
            GuestAccountDto guestAccountClientDto = null;

            var result = await gameServiceEndpoint.QuitGameAsaGuestAccountAsync(gameClientDto, guestAccountClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected QuitGameAsaGuestAccountAsync to return error when guestAccountClientDto is null.");
        }


        [TestMethod]
        public async Task GetAllPlayersInGame_ShouldReturnSuccess_WhenInputsAreValid()
        {
            var gameClientDto = new GameDto { Id = 1 };
            var preferredLanguage = "en";
            var expectedResult = new OperationResultListOfPlayersInGame(true, "List of players retrieved successfully");

            mockGameService
                .Setup(gs => gs.GetAllPlayersInGameInDataBase(gameClientDto, preferredLanguage))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.GetAllPlayersInGame(gameClientDto, preferredLanguage);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "List of players retrieved successfully",
                          "Expected GetAllPlayersInGame to return success when inputs are valid.");
        }

        [TestMethod]
        public async Task GetScoreGameWorld_ShouldReturnSuccess_WhenInputsAreValid()
        {
            var profileClientDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var expectedResult = new OperationResultListScoreGame(true, "Scores retrieved successfully");

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.GetScoreGameWorldInDataBase(profileClientDto))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.GetScoreGameWorld(profileClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Scores retrieved successfully",
                          "Expected GetScoreGameWorld to return success when inputs are valid.");
        }

        [TestMethod]
        public async Task GetScoreGameWorld_ShouldReturnError_WhenProfileClientDtoIsNull()
        {
            ProfileDto profileClientDto = null; // Invalid profile object

            var result = await gameServiceEndpoint.GetScoreGameWorld(profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetScoreGameWorld to return error when profileClientDto is null.");
        }
        [TestMethod]
        public async Task GetScoreGameFriends_ShouldReturnSuccess_WhenInputsAreValid()
        {
            var profileClientDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };
            var expectedResult = new OperationResultListScoreGame(true, "Friend scores retrieved successfully");

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.GetScoreGameFriendsInDataBase(profileClientDto))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.GetScoreGameFriends(profileClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Friend scores retrieved successfully",
                          "Expected GetScoreGameFriends to return success when inputs are valid.");
        }
        [TestMethod]
        public async Task StartGameAsync_ShouldReturnTrue_WhenPlayerIsRegisteredAndOnline()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.StartGameInDataBaseAsync(playerGameplayDto.Id, gameClientDto))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.StartGameAsync(playerGameplayDto, gameClientDto);

            Assert.IsTrue(result, "Expected StartGameAsync to return true when the registered player is online.");
        }

        [TestMethod]
        public async Task StartGameAsync_ShouldReturnTrue_WhenPlayerIsGuestAndOnline()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = false };
            var gameClientDto = new GameDto { Id = 2 };

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount(playerGameplayDto.Id))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.StartGameInDataBaseAsync(playerGameplayDto.Id, gameClientDto))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.StartGameAsync(playerGameplayDto, gameClientDto);

            Assert.IsTrue(result, "Expected StartGameAsync to return true when the guest player is online.");
        }

        [TestMethod]
        public async Task StartGameAsync_ShouldReturnFalse_WhenPlayerGameplayDtoIsNull()
        {
            PlayerGameplayDto playerGameplayDto = null;
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.StartGameAsync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected StartGameAsync to return false when PlayerGameplayDto is null.");
        }

        [TestMethod]
        public async Task StartGameAsync_ShouldReturnFalse_WhenRegisteredPlayerIsOffline()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.StartGameAsync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected StartGameAsync to return false when the registered player is offline.");
        }

        [TestMethod]
        public async Task StartGameAsync_ShouldReturnFalse_WhenGuestPlayerIsOffline()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = false };
            var gameClientDto = new GameDto { Id = 2 };

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount(playerGameplayDto.Id))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.StartGameAsync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected StartGameAsync to return false when the guest player is offline.");
        }

        [TestMethod]
        public async Task GetScoreGameFriends_ShouldReturnError_WhenProfileClientDtoIsNull()
        {
            ProfileDto profileClientDto = null; // Invalid profile object

            var result = await gameServiceEndpoint.GetScoreGameFriends(profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetScoreGameFriends to return error when profileClientDto is null.");
        }

        [TestMethod]
        public async Task GetScoreGameFriends_ShouldReturnError_WhenProfileIsOffline()
        {
            var profileClientDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.GetScoreGameFriends(profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetScoreGameFriends to return error when profile is offline.");
        }

        [TestMethod]
        public async Task NextTurnAync_ShouldReturnTrue_WhenRegisteredPlayerIsOnlineAndGameIsValid()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.NextTurnInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.NextTurnAync(playerGameplayDto, gameClientDto);

            Assert.IsTrue(result, "Expected NextTurnAync to return true when registered player is online and game is valid.");
        }

        [TestMethod]
        public async Task NextTurnAync_ShouldReturnTrue_WhenGuestPlayerIsOnlineAndGameIsValid()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = false };
            var gameClientDto = new GameDto { Id = 2 };

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount(playerGameplayDto.Id))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.NextTurnInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.NextTurnAync(playerGameplayDto, gameClientDto);

            Assert.IsTrue(result, "Expected NextTurnAync to return true when guest player is online and game is valid.");
        }

        [TestMethod]
        public async Task NextTurnAync_ShouldReturnFalse_WhenPlayerGameplayDtoIsNull()
        {
            PlayerGameplayDto playerGameplayDto = null;
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.NextTurnAync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected NextTurnAync to return false when PlayerGameplayDto is null.");
        }

        [TestMethod]
        public async Task NextTurnAync_ShouldReturnFalse_WhenGameClientDtoIsNull()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            GameDto gameClientDto = null;

            var result = await gameServiceEndpoint.NextTurnAync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected NextTurnAync to return false when GameClientDto is null.");
        }

        [TestMethod]
        public async Task NextTurnAync_ShouldReturnFalse_WhenRegisteredPlayerIsOffline()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.NextTurnAync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected NextTurnAync to return false when registered player is offline.");
        }

        [TestMethod]
        public async Task NextTurnAync_ShouldReturnFalse_WhenGuestPlayerIsOffline()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = false };
            var gameClientDto = new GameDto { Id = 2 };

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount(playerGameplayDto.Id))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.NextTurnAync(playerGameplayDto, gameClientDto);

            Assert.IsFalse(result, "Expected NextTurnAync to return false when guest player is offline.");
        }

        [TestMethod]
        public async Task GetScoreGameWorld_ShouldReturnError_WhenProfileIsOffline()
        {
            var profileClientDto = new ProfileDto { Id = 1, CurrentSessionID = "session123" };

            mockProfileService
                .Setup(ps => ps.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
                .ReturnsAsync(false);

            var result = await gameServiceEndpoint.GetScoreGameWorld(profileClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetScoreGameWorld to return error when profile is offline.");
        }

        [TestMethod]
        public async Task GetAllPlayersInGame_ShouldReturnError_WhenGameClientDtoIsNull()
        {
            GameDto gameClientDto = null; 
            var preferredLanguage = "en";

            var result = await gameServiceEndpoint.GetAllPlayersInGame(gameClientDto, preferredLanguage);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetAllPlayersInGame to return error when gameClientDto is null.");
        }

        [TestMethod]
        public async Task GetAllPlayersInGame_ShouldReturnError_WhenGameClientDtoIdIsNull()
        {
            var gameClientDto = new GameDto { Id = null }; 
            var preferredLanguage = "en";

            var result = await gameServiceEndpoint.GetAllPlayersInGame(gameClientDto, preferredLanguage);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetAllPlayersInGame to return error when gameClientDto.Id is null.");
        }

        [TestMethod]
        public async Task GetAllPlayersInGame_ShouldReturnError_WhenPreferredLanguageIsEmpty()
        {
            var gameClientDto = new GameDto { Id = 1 };
            var preferredLanguage = string.Empty; 

            var result = await gameServiceEndpoint.GetAllPlayersInGame(gameClientDto, preferredLanguage);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected GetAllPlayersInGame to return error when preferredLanguage is empty.");
        }

        [TestMethod]
        public async Task ThrowDiceAsync_ShouldCallGameService_WhenRegisteredPlayerIsOnlineAndGameIsValid()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };
            var valueDice = 6;

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(true);

            await gameServiceEndpoint.ThrowDiceAsync(playerGameplayDto, gameClientDto, valueDice);

            mockGameService.Verify(gs => gs.ThrowDiceInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id, valueDice), Times.Once);
        }

        [TestMethod]
        public async Task ThrowDiceAsync_ShouldCallGameService_WhenGuestPlayerIsOnlineAndGameIsValid()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = false };
            var gameClientDto = new GameDto { Id = 2 };
            var valueDice = 4;

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount(playerGameplayDto.Id))
                .ReturnsAsync(true);

            await gameServiceEndpoint.ThrowDiceAsync(playerGameplayDto, gameClientDto, valueDice);

            mockGameService.Verify(gs => gs.ThrowDiceInDataBaseAsync((int)gameClientDto.Id, playerGameplayDto.Id, valueDice), Times.Once);
        }
        [TestMethod]
        public async Task PlacePieceOnBoardAsync_ShouldReturnSuccess_WhenRegisteredPlayerIsOnlineAndPlacementIsValid()
        {
            var placementDto = new PiecePlacementDto { PieceType = "Road", TargetEdgeId = 8 };
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };
            var expectedResult = new OperationResultDto(true, "Piece placed successfully");

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, (int)gameClientDto.Id))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, gameClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Piece placed successfully",
                          "Expected PlacePieceOnBoardAsync to return success when registered player is online and placement is valid.");
        }

        [TestMethod]
        public async Task PlacePieceOnBoardAsync_ShouldReturnSuccess_WhenGuestPlayerIsOnlineAndPlacementIsValid()
        {
            var placementDto = new PiecePlacementDto { PieceType = "Settlement", TargetEdgeId = 8 };
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = false };
            var gameClientDto = new GameDto { Id = 2 };
            var expectedResult = new OperationResultDto(true, "Piece placed successfully");

            mockGuestAccountService
                .Setup(gas => gas.IsOnlineGuestAccount(playerGameplayDto.Id))
                .ReturnsAsync(true);
            mockGameService
                .Setup(gs => gs.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, (int)gameClientDto.Id))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, gameClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Piece placed successfully",
                          "Expected PlacePieceOnBoardAsync to return success when guest player is online and placement is valid.");
        }

        [TestMethod]
        public async Task PlacePieceOnBoardAsync_ShouldReturnError_WhenPlayerGameplayDtoIsNull()
        {
            var placementDto = new PiecePlacementDto { PieceType = "City", TargetHexId = 9 };
            PlayerGameplayDto playerGameplayDto = null;
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected PlacePieceOnBoardAsync to return error when PlayerGameplayDto is null.");
        }

        [TestMethod]
        public async Task PlacePieceOnBoardAsync_ShouldReturnError_WhenGameClientDtoIsNull()
        {
            var placementDto = new PiecePlacementDto { PieceType = "Road", TargetVertexId = 9 };
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            GameDto gameClientDto = null;

            var result = await gameServiceEndpoint.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected PlacePieceOnBoardAsync to return error when GameClientDto is null.");
        }

        [TestMethod]
        public async Task PlacePieceOnBoardAsync_ShouldReturnError_WhenPlacementDtoIsNull()
        {
            PiecePlacementDto placementDto = null;
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            var gameClientDto = new GameDto { Id = 2 };

            mockProfileService
                .Setup(ps => ps.IsOnline(playerGameplayDto.Id, playerGameplayDto.CurrentSession))
                .ReturnsAsync(true);

            var result = await gameServiceEndpoint.PlacePieceOnBoardAsync(placementDto, playerGameplayDto, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected PlacePieceOnBoardAsync to return error when PlacementDto is null.");
        }

        [TestMethod]
        public async Task ThrowDiceAsync_ShouldNotCallGameService_WhenPlayerGameplayDtoIsNull()
        {
            PlayerGameplayDto playerGameplayDto = null;
            var gameClientDto = new GameDto { Id = 2 };
            var valueDice = 3;

            await gameServiceEndpoint.ThrowDiceAsync(playerGameplayDto, gameClientDto, valueDice);

            mockGameService.Verify(gs => gs.ThrowDiceInDataBaseAsync(It.IsAny<int>(), It.IsAny<int>(), It.IsAny<int>()), Times.Never);
        }

        [TestMethod]
        public async Task ThrowDiceAsync_ShouldNotCallGameService_WhenGameClientDtoIsNull()
        {
            var playerGameplayDto = new PlayerGameplayDto { Id = 1, isRegistered = true, CurrentSession = "session123" };
            GameDto gameClientDto = null;
            var valueDice = 5;

            await gameServiceEndpoint.ThrowDiceAsync(playerGameplayDto, gameClientDto, valueDice);

            mockGameService.Verify(gs => gs.ThrowDiceInDataBaseAsync(It.IsAny<int>(), It.IsAny<int>(), It.IsAny<int>()), Times.Never);
        }

        [TestMethod]
        public async Task StartTradeAsync_ShouldReturnSuccess_WhenInputsAreValid()
        {
            var needResources = new PlayerResourcesDto
            {
                PlayerId = 9,
                AlphaNanofibers = new ResourceDto { Quantity = 3 },
                Grx810 = new ResourceDto { Quantity = 4 },
                Tritonium = new ResourceDto { Quantity = 2 }
            };

            var offerResources = new PlayerResourcesDto
            {
                PlayerId = 2,
                AlphaNanofibers = new ResourceDto { Quantity = 3 },
                Grx810 = new ResourceDto { Quantity = 4 },
                Tritonium = new ResourceDto { Quantity = 2 }
            };

            var gameClientDto = new GameDto { Id = 2 };
            var expectedResult = new OperationResultDto(true, "Trade started successfully");

            mockGameService
                .Setup(gs => gs.StartTradeAsync(needResources, offerResources, (int)gameClientDto.Id))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.StartTradeAsync(needResources, offerResources, gameClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Trade started successfully",
                          "Expected StartTradeAsync to return success when inputs are valid.");
        }

        [TestMethod]
        public async Task StartTradeAsync_ShouldReturnError_WhenNeedResourcesIsNull()
        {
            PlayerResourcesDto needResources = null;
            var offerResources = new PlayerResourcesDto
            {
                PlayerId = 2,
                AlphaNanofibers = new ResourceDto { Quantity = 3 },
                Grx810 = new ResourceDto { Quantity = 4 },
                Tritonium = new ResourceDto { Quantity = 2 }
            };

            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.StartTradeAsync(needResources, offerResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected StartTradeAsync to return error when NeedResources is null.");
        }

        [TestMethod]
        public async Task StartTradeAsync_ShouldReturnError_WhenOfferResourcesIsNull()
        {
            var needResources = new PlayerResourcesDto
            {
                PlayerId = 9,
                AlphaNanofibers = new ResourceDto { Quantity = 3 },
                Grx810 = new ResourceDto { Quantity = 4 },
                Tritonium = new ResourceDto { Quantity = 2 }
            };

            PlayerResourcesDto offerResources = null;

            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.StartTradeAsync(needResources, offerResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected StartTradeAsync to return error when OfferResources is null.");
        }

        [TestMethod]
        public async Task StartTradeAsync_ShouldReturnError_WhenGameClientDtoIsNull()
        {
            var needResources = new PlayerResourcesDto
            {
                PlayerId = 9,
                AlphaNanofibers = new ResourceDto { Quantity = 3 },
                Grx810 = new ResourceDto { Quantity = 4 },
                Tritonium = new ResourceDto { Quantity = 2 }
            };

            var offerResources = new PlayerResourcesDto
            {
                PlayerId = 2,
                AlphaNanofibers = new ResourceDto { Quantity = 3 },
                Grx810 = new ResourceDto { Quantity = 4 },
                Tritonium = new ResourceDto { Quantity = 2 }
            };

            GameDto gameClientDto = null;

            var result = await gameServiceEndpoint.StartTradeAsync(needResources, offerResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected StartTradeAsync to return error when GameClientDto is null.");
        }

        [TestMethod]
        public async Task StartTradeAsync_ShouldReturnError_WhenNeedResourcesAndOfferResourcesAreNull()
        {
            PlayerResourcesDto needResources = null;
            PlayerResourcesDto offerResources = null;
            var gameClientDto = new GameDto { Id = 2 };

            var result = await gameServiceEndpoint.StartTradeAsync(needResources, offerResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected StartTradeAsync to return error when both NeedResources and OfferResources are null.");
        }
        [TestMethod]
        public async Task AcceptTradeAsync_ShouldReturnSuccess_WhenInputsAreValid()
        {
            var sendResources = new PlayerResourcesDto
            {
                PlayerId = 1,
                AlphaNanofibers = new ResourceDto { Quantity = 2 },
                Grx810 = new ResourceDto { Quantity = 3 },
                Tritonium = new ResourceDto { Quantity = 1 }
            };

            var receivedResources = new PlayerResourcesDto
            {
                PlayerId = 2,
                AlphaNanofibers = new ResourceDto { Quantity = 1 },
                Grx810 = new ResourceDto { Quantity = 2 },
                Tritonium = new ResourceDto { Quantity = 3 }
            };

            var gameClientDto = new GameDto { Id = 5 };
            var expectedResult = new OperationResultDto(true, "Trade accepted successfully");

            mockGameService
                .Setup(gs => gs.AcceptTradeAsync(sendResources, receivedResources, (int)gameClientDto.Id))
                .ReturnsAsync(expectedResult);

            var result = await gameServiceEndpoint.AcceptTradeAsync(sendResources, receivedResources, gameClientDto);

            Assert.IsTrue(result.IsSuccess && result.MessageResponse == "Trade accepted successfully",
                          "Expected AcceptTradeAsync to return success when inputs are valid.");
        }

        [TestMethod]
        public async Task AcceptTradeAsync_ShouldReturnError_WhenSendResourcesIsNull()
        {
            PlayerResourcesDto sendResources = null;
            var receivedResources = new PlayerResourcesDto
            {
                PlayerId = 2,
                AlphaNanofibers = new ResourceDto { Quantity = 1 },
                Grx810 = new ResourceDto { Quantity = 2 },
                Tritonium = new ResourceDto { Quantity = 3 }
            };

            var gameClientDto = new GameDto { Id = 5 };

            var result = await gameServiceEndpoint.AcceptTradeAsync(sendResources, receivedResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected AcceptTradeAsync to return error when SendResources is null.");
        }

        [TestMethod]
        public async Task AcceptTradeAsync_ShouldReturnError_WhenReceivedResourcesIsNull()
        {
            var sendResources = new PlayerResourcesDto
            {
                PlayerId = 1,
                AlphaNanofibers = new ResourceDto { Quantity = 2 },
                Grx810 = new ResourceDto { Quantity = 3 },
                Tritonium = new ResourceDto { Quantity = 1 }
            };

            PlayerResourcesDto receivedResources = null;
            var gameClientDto = new GameDto { Id = 5 };

            var result = await gameServiceEndpoint.AcceptTradeAsync(sendResources, receivedResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected AcceptTradeAsync to return error when ReceivedResources is null.");
        }

        [TestMethod]
        public async Task AcceptTradeAsync_ShouldReturnError_WhenGameClientDtoIsNull()
        {
            var sendResources = new PlayerResourcesDto
            {
                PlayerId = 1,
                AlphaNanofibers = new ResourceDto { Quantity = 2 },
                Grx810 = new ResourceDto { Quantity = 3 },
                Tritonium = new ResourceDto { Quantity = 1 }
            };

            var receivedResources = new PlayerResourcesDto
            {
                PlayerId = 2,
                AlphaNanofibers = new ResourceDto { Quantity = 1 },
                Grx810 = new ResourceDto { Quantity = 2 },
                Tritonium = new ResourceDto { Quantity = 3 }
            };

            GameDto gameClientDto = null;

            var result = await gameServiceEndpoint.AcceptTradeAsync(sendResources, receivedResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected AcceptTradeAsync to return error when GameClientDto is null.");
        }

        [TestMethod]
        public async Task AcceptTradeAsync_ShouldReturnError_WhenAllInputsAreNull()
        {
            PlayerResourcesDto sendResources = null;
            PlayerResourcesDto receivedResources = null;
            GameDto gameClientDto = null;

            var result = await gameServiceEndpoint.AcceptTradeAsync(sendResources, receivedResources, gameClientDto);

            Assert.IsFalse(result.IsSuccess && result.MessageResponse == LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                           "Expected AcceptTradeAsync to return error when all inputs are null.");
        }
    }

}
