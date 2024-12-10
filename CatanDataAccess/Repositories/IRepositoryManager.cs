using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Repositories;
using CatanDataAccess.Repositories.AccountRepositories;
using CatanDataAccess.Repositories.FriendRequestRepositories;
using CatanDataAccess.Repositories.GameRepositories;
using CatanDataAccess.Repositories.GuestAccountGameRepositories;
using CatanDataAccess.Repositories.GuestAccountRepositories;
using CatanDataAccess.Repositories.ProfileGameRepositories;
using CatanDataAccess.Repositories.ProfileRepositories;

namespace CatanDataAccess.Repositories
{
    public interface IRepositoryManager
    {
        IAccountRepository AccountRepository { get; }
        IProfileRepository ProfileRepository { get; }
        IGameRepository GameRepository { get; }
        IProfileGameRepository ProfileGameRepository { get; }
        IGuestAccountRepository GuestAccountRepository { get; }
        IGuestAccountGameRepository GuestAccountGameRepository { get; }
        IFriendRequestRepository FriendRequestRepository { get; }
        Task<DbContextTransaction> StartTransactionAsync();
        Task SaveAsync();
    }
}
