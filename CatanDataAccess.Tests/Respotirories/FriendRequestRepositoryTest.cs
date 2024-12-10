using CatanDataAccess.Domain;
using CatanDataAccess.Repositories;
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
    public class FriendRequestRepositoryTests
    {
        private Mock<DbSet<FriendRequest>> mockDbSet;
        private Mock<DbContext> mockDbContext;
        private FriendRequestRepository friendRequestRepository;

        [TestInitialize]
        public void Setup()
        {
            mockDbSet = new Mock<DbSet<FriendRequest>>();
            mockDbContext = new Mock<DbContext>();

            mockDbContext.Setup(c => c.Set<FriendRequest>()).Returns(mockDbSet.Object);

            friendRequestRepository = new FriendRequestRepository(mockDbContext.Object);
        }

        [TestMethod]
        public async Task ExistsFriendRequestAsync_ShouldReturnFalse_WhenRequestDoesNotExist()
        {
            var friendRequestData = new List<FriendRequest>().AsQueryable();

            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.Provider).Returns(friendRequestData.Provider);
            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.Expression).Returns(friendRequestData.Expression);
            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.ElementType).Returns(friendRequestData.ElementType);
            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.GetEnumerator()).Returns(friendRequestData.GetEnumerator());

            var result = await friendRequestRepository.ExistsAFriendRequestAsync(1, 2);

            Assert.IsFalse(result);
        }
        [TestMethod]
        public async Task DeleteFriendRequestAsync_ShouldReturnFalse_WhenFriendRequestDoesNotExist()
        {
            var friendRequestData = new List<FriendRequest>().AsQueryable();

            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.Provider).Returns(friendRequestData.Provider);
            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.Expression).Returns(friendRequestData.Expression);
            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.ElementType).Returns(friendRequestData.ElementType);
            mockDbSet.As<IQueryable<FriendRequest>>().Setup(m => m.GetEnumerator()).Returns(friendRequestData.GetEnumerator());

            var result = await friendRequestRepository.DeleteFriendRequestAsync(1, 2);

            Assert.IsFalse(result);
        }
    }

}
