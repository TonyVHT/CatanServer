using CatanDataAccess.Domain;
using CatanDataAccess.Repositories;
using CatanDataAccess.Repositories.AccountRepositories;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CatanDataAccess.Tests.Respotirories
{
    [TestClass]
    public class AccountRepositoryTests
    {
        private Mock<DbSet<Account>> mockDbSet;
        private Mock<DbContext> mockDbContext;
        private AccountRepository accountRepository;

        [TestInitialize]
        public void Setup()
        {
            mockDbSet = new Mock<DbSet<Account>>();
            mockDbContext = new Mock<DbContext>();

            mockDbContext.Setup(c => c.Set<Account>()).Returns(mockDbSet.Object);

            accountRepository = new AccountRepository(mockDbContext.Object);
        }

        [TestMethod]
        public async Task GetPreferredLanguageAsync_ShouldReturnPreferredLanguage_WhenAccountExists()
        {
            var accountData = new List<Account>
        {
            new Account { Id = 1, PreferredLanguage = "en" }
        }.AsQueryable();

            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Provider).Returns(accountData.Provider);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Expression).Returns(accountData.Expression);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.ElementType).Returns(accountData.ElementType);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.GetEnumerator()).Returns(accountData.GetEnumerator());

            var result = await accountRepository.GetPreferredLanguageAsync(1);

            Assert.AreEqual("en", result);
        }

        [TestMethod]
        public async Task IsAccountRegisteredWithEmailAsync_ShouldReturnFalse_WhenAccountDoesNotExist()
        {
            var accountData = new List<Account>().AsQueryable();

            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Provider).Returns(accountData.Provider);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Expression).Returns(accountData.Expression);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.ElementType).Returns(accountData.ElementType);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.GetEnumerator()).Returns(accountData.GetEnumerator());

            var result = await accountRepository.IsAccountRegisteredWithEmailAsync("nonexistent@example.com");

            Assert.IsFalse(result);
        }

        [TestMethod]
        public async Task GetPreferredLanguageAsync_ShouldReturnDefaultLanguage_WhenAccountDoesNotExist()
        {
            var accountData = new List<Account>().AsQueryable();

            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Provider).Returns(accountData.Provider);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Expression).Returns(accountData.Expression);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.ElementType).Returns(accountData.ElementType);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.GetEnumerator()).Returns(accountData.GetEnumerator());

            var result = await accountRepository.GetPreferredLanguageAsync(99);

            Assert.AreEqual(AccountRepository.DEFAULT_LANGUAGE, result);
        }

        [TestMethod]
        public async Task SetPreferredLanguageAsync_ShouldReturnFalse_WhenAccountDoesNotExist()
        {
            var accountData = new List<Account>().AsQueryable();

            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Provider).Returns(accountData.Provider);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Expression).Returns(accountData.Expression);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.ElementType).Returns(accountData.ElementType);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.GetEnumerator()).Returns(accountData.GetEnumerator());

            var result = await accountRepository.SetPreferredLanguageAsync(99, "es");

            Assert.IsFalse(result);
        }

        [TestMethod]
        public async Task ChangeStatusToVerifyAsync_ShouldReturnFalse_WhenAccountDoesNotExist()
        {
            var accountData = new List<Account>().AsQueryable();

            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Provider).Returns(accountData.Provider);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Expression).Returns(accountData.Expression);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.ElementType).Returns(accountData.ElementType);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.GetEnumerator()).Returns(accountData.GetEnumerator());

            var result = await accountRepository.ChangeStatusToVerifyAsync("1234567890", "test@example.com", "invalidToken");

            Assert.IsFalse(result);
        }

        [TestMethod]
        public async Task ChangeStatusToVerifyAsync_ShouldReturnFalse_WhenTokenDoesNotMatch()
        {
            var accountData = new List<Account>
        {
            new Account { PhoneNumber = "1234567890", Email = "test@example.com", Token = "validToken", Status = false }
        }.AsQueryable();

            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Provider).Returns(accountData.Provider);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.Expression).Returns(accountData.Expression);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.ElementType).Returns(accountData.ElementType);
            mockDbSet.As<IQueryable<Account>>().Setup(m => m.GetEnumerator()).Returns(accountData.GetEnumerator());

            var result = await accountRepository.ChangeStatusToVerifyAsync("1234567890", "test@example.com", "invalidToken");

            Assert.IsFalse(result);
        }
    }

}
