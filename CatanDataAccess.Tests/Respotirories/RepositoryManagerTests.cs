using CatanDataAccess.Repositories;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Tests.Repositories
{
    [TestClass]
    public class RepositoryManagerTests
    {
        private Mock<DbContext> mockDbContext;
        private RepositoryManager repositoryManager;

        [TestInitialize]
        public void Setup()
        {
            mockDbContext = new Mock<DbContext>();

            repositoryManager = new RepositoryManager(mockDbContext.Object);
        }

        [TestMethod]
        public void AccountRepository_ShouldCreateInstance_WhenAccessed()
        {
            var accountRepo = repositoryManager.AccountRepository;

            Assert.IsNotNull(accountRepo, "AccountRepository should be created when accessed.");
        }

        [TestMethod]
        public void ProfileRepository_ShouldCreateInstance_WhenAccessed()
        {
            var profileRepo = repositoryManager.ProfileRepository;

            Assert.IsNotNull(profileRepo, "ProfileRepository should be created when accessed.");
        }

        [TestMethod]
        public async Task SaveAsync_ShouldCallDbContextSaveChanges()
        {
            mockDbContext.Setup(db => db.SaveChangesAsync()).ReturnsAsync(1);

            await repositoryManager.SaveAsync();

            mockDbContext.Verify(db => db.SaveChangesAsync(), Times.Once);
        }
    }
}

