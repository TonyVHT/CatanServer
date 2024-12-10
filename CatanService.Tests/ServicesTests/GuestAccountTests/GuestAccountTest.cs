using CatanDataAccess.Domain;
using CatanDataAccess.Repositories;
using CatanService.DataTransferObject;
using CatanService.EndPoint;
using CatanService.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Tests.ServicesTests.GuestAccountTests
{
    [TestClass]
    public class GuestAccountEndpointTests
    {
        private Mock<IServiceManager> mockServiceManager;
        private Mock<IGuestAccountService> mockGuestAccountService;
        private GuestAccountEndpoint guestAccountEndpoint;
        private GuestAccountService guestAccountService;
        private Mock<IRepositoryManager> mockRepositoryManager;

        [TestInitialize]
        public void Setup()
        {
            mockServiceManager = new Mock<IServiceManager>();
            mockGuestAccountService = new Mock<IGuestAccountService>();
            mockRepositoryManager = new Mock<IRepositoryManager>(); // Asegúrate de inicializar el Mock

            mockServiceManager.Setup(sm => sm.GuestAccountService).Returns(mockGuestAccountService.Object);

            guestAccountEndpoint = new GuestAccountEndpoint(mockServiceManager.Object);
            guestAccountService = new GuestAccountService(mockRepositoryManager.Object); // Usa el Mock inicializado
        }


        [TestMethod]
        public async Task CreateGuestAccount_ShouldReturnSuccess_WhenValidLanguageProvided()
        {
            string preferredLanguage = "en";
            var expectedResult = new OperationResultGuestAccountDto(true, "Guest account created successfully", new GuestAccountDto { PreferredLanguage = preferredLanguage });

            mockGuestAccountService.Setup(gs => gs.CreateGuestAccountInDataBaseAsync(preferredLanguage)).ReturnsAsync(expectedResult);

            var result = await guestAccountEndpoint.CreateGuestAccount(preferredLanguage);

            Assert.IsTrue(result.IsSuccess && result.GuestAccount != null && result.GuestAccount.PreferredLanguage == preferredLanguage,
                          "Expected guest account creation to succeed with a valid GuestAccountDto.");
        }

        [TestMethod]
        public async Task CreateGuestAccountDto_ShouldReturnGuestAccountDto_WhenGuestAccountRecordIsValid()
        {
            var guestAccountRecord = new GuestAccount { Id = 1, Name = "Guest123" };

            var result = await guestAccountService.CreateGuestAccountDto(guestAccountRecord);

            Assert.IsTrue(result != null && result.Id == guestAccountRecord.Id && result.Name == guestAccountRecord.Name);
        }

        [TestMethod]
        public async Task CreateGuestAccountDto_ShouldReturnNull_WhenGuestAccountRecordIsNull()
        {
            GuestAccount guestAccountRecord = null;

            var result = await guestAccountService.CreateGuestAccountDto(guestAccountRecord);

            Assert.IsNull(result);
        }
        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnTrue_WhenTimeDifferenceIsWithinLimit()
        {
            var lastActivity = DateTime.UtcNow.AddMinutes(-10);
            var newActivity = DateTime.UtcNow;

            var result = GuestAccountService.IsActiveWithinTimeLimite(lastActivity, newActivity);

            Assert.IsTrue(result);
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenTimeDifferenceExceedsLimit()
        {
            var lastActivity = DateTime.UtcNow.AddMinutes(-20);
            var newActivity = DateTime.UtcNow;

            var result = GuestAccountService.IsActiveWithinTimeLimite(lastActivity, newActivity);

            Assert.IsFalse(result);
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenLastActivityIsNull()
        {
            DateTime? lastActivity = null;
            var newActivity = DateTime.UtcNow;

            var result = GuestAccountService.IsActiveWithinTimeLimite(lastActivity, newActivity);

            Assert.IsFalse(result);
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenNewActivityIsNull()
        {
            var lastActivity = DateTime.UtcNow.AddMinutes(-10);
            DateTime? newActivity = null;

            var result = GuestAccountService.IsActiveWithinTimeLimite(lastActivity, newActivity);

            Assert.IsFalse(result);
        }

        [TestMethod]
        public void IsActiveWithinTimeLimite_ShouldReturnFalse_WhenBothActivitiesAreNull()
        {
            DateTime? lastActivity = null;
            DateTime? newActivity = null;

            var result = GuestAccountService.IsActiveWithinTimeLimite(lastActivity, newActivity);

            Assert.IsFalse(result);
        }
        [TestMethod]
        public async Task CreateGuestAccountDto_ShouldUpdateLastActivity_WhenGuestAccountRecordIsValid()
        {
            var guestAccountRecord = new GuestAccount { Id = 1, Name = "Guest123", LastActivity = DateTime.UtcNow.AddHours(-1) };

            mockRepositoryManager
                .Setup(rm => rm.SaveAsync())
                .Returns(Task.CompletedTask);
            await guestAccountService.CreateGuestAccountDto(guestAccountRecord);

            Assert.IsTrue(guestAccountRecord.LastActivity > DateTime.UtcNow.AddMinutes(-1), "Expected LastActivity to be updated to a more recent value.");
            mockRepositoryManager.Verify(rm => rm.SaveAsync(), Times.Once, "Expected SaveAsync to be called to persist changes.");
        }

        [TestMethod]
        public async Task CreateGuestAccount_ShouldReturnFailure_WhenLanguageIsNull()
        {
            var result = await guestAccountEndpoint.CreateGuestAccount(null);

            Assert.IsFalse(result.IsSuccess && result.GuestAccount == null,
                          "Expected guest account creation to fail with null language.");
        }

        [TestMethod]
        public async Task CreateGuestAccount_ShouldReturnFailure_WhenLanguageIsEmpty()
        {
            string preferredLanguage = string.Empty;

            var result = await guestAccountEndpoint.CreateGuestAccount(preferredLanguage);

            Assert.IsFalse(result.IsSuccess && result.GuestAccount == null,
                          "Expected guest account creation to fail with empty language.");
        }
    }

}
