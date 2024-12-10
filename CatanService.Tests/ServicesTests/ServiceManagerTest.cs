using CatanDataAccess.Repositories;
using CatanService.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace CatanService.Tests
{

    [TestClass]
    public class ServiceManagerTest
    {
        private Mock<IRepositoryManager> mockRepositoryManager;
        private ServiceManager serviceManager;

        [TestInitialize]
        public void Setup()
        {
            mockRepositoryManager = new Mock<IRepositoryManager>();

            serviceManager = new ServiceManager(mockRepositoryManager.Object);
        }

        [TestMethod]
        public void AccountService_ShouldCreateInstance_WhenAccessed()
        {
            var accountService = serviceManager.AccountService;

            Assert.IsNotNull(accountService, "AccountService should be created when accessed.");
        }

        [TestMethod]
        public void AccountService_ShouldReturnSameInstance_WhenAccessedMultipleTimes()
        {
            var accountService1 = serviceManager.AccountService;
            var accountService2 = serviceManager.AccountService;

            Assert.AreSame(accountService1, accountService2, "AccountService should return the same instance when accessed multiple times.");
        }

        [TestMethod]
        public void ProfileService_ShouldCreateInstance_WhenAccessed()
        {
            var profileService = serviceManager.ProfileService;

            Assert.IsNotNull(profileService, "ProfileService should be created when accessed.");
        }

        [TestMethod]
        public void SmsService_ShouldCreateInstance_WhenAccessed()
        {
            var smsService = serviceManager.SmsService;

            Assert.IsNotNull(smsService, "SmsService should be created when accessed.");
        }

        [TestMethod]
        public void TelegramService_ShouldCreateInstance_WhenAccessed()
        {
            var telegramService = serviceManager.TelegramService;

            Assert.IsNotNull(telegramService, "TelegramService should be created when accessed.");
        }
    }
}
