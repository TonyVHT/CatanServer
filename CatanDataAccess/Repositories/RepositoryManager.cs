using CatanDataAccess.Repositories.AccountRepositories;
using CatanDataAccess.Repositories.FriendRequestRepositories;
using CatanDataAccess.Repositories.GameRepositories;
using CatanDataAccess.Repositories.GuestAccountGameRepositories;
using CatanDataAccess.Repositories.GuestAccountRepositories;
using CatanDataAccess.Repositories.ProfileGameRepositories;
using CatanDataAccess.Repositories.ProfileRepositories;
using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories
{
    public class RepositoryManager : IRepositoryManager
    {
        private readonly DbContext dbContext;
        private IAccountRepository accountRepository;
        private IProfileRepository profileRepository;
        private IGameRepository gameRepository;
        private IProfileGameRepository profileGameRepository;
        private IGuestAccountRepository guestAccountRepository;
        private IGuestAccountGameRepository guestAccountGameRepository;
        private IFriendRequestRepository friendRequestRepository;
        public RepositoryManager(DbContext dbContext)
        {
            this.dbContext = dbContext;
        }
        public IAccountRepository AccountRepository
        {
            get
            {
                if (accountRepository == null)
                {
                    accountRepository = new AccountRepository(dbContext);
                }

                return accountRepository;
            }
        }

        public IProfileRepository ProfileRepository
        {
            get
            {
                if (profileRepository == null)
                {
                    profileRepository = new ProfileRepository(dbContext);
                }
                return profileRepository;
            }
        }

        public IGameRepository GameRepository 
        {
            get
            {
                if(gameRepository == null)
                {
                    gameRepository = new GameRepository(dbContext);
                }
                return gameRepository;
            }
        }

        public IProfileGameRepository ProfileGameRepository 
        {
            get 
            {
                if(profileGameRepository == null)
                {
                    profileGameRepository = new ProfileGameRepository(dbContext);
                }
                return profileGameRepository;
            }
        }

        public IGuestAccountRepository GuestAccountRepository
        {
            get
            {
                if (guestAccountRepository == null)
                {
                    guestAccountRepository = new GuestAccountRepository(dbContext);
                }
                return guestAccountRepository;
            }
        }

        public IGuestAccountGameRepository GuestAccountGameRepository
        {
            get
            {
                if (guestAccountGameRepository == null)
                {
                    guestAccountGameRepository = new GuestAccountGameRepository(dbContext);
                }
                return guestAccountGameRepository;
            }
        }

        public IFriendRequestRepository FriendRequestRepository 
        {
            get
            {
                if (friendRequestRepository == null)
                {
                    friendRequestRepository = new FriendRequestRepository(dbContext);
                }
                return friendRequestRepository;
            }
        }

        public async Task SaveAsync()
        {
            try
            {
                await dbContext.SaveChangesAsync();
            }
            catch (DbUpdateException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(NotSupportedException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(ObjectDisposedException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }

        public Task<DbContextTransaction> StartTransactionAsync()
        {
            return Task.FromResult(dbContext.Database.BeginTransaction());
        }
    }
}
