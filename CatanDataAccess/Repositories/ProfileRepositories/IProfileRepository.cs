using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories.ProfileRepositories
{
    public interface IProfileRepository : IRepository<Profile>
    {
        Task<bool> IsProfileNameRegisteredAsync(string name);
        Task<int> GetProfileIdByNameAsync(string nameProfile);
        Task<Profile> GetProfileByNameAsync(string nameProfile);
        Task<List<Profile>> GetFriendsByProfileIdAsync(int profileId);
        Task<List<Profile>> GetPendingFriendRequestsByProfileIdAsync(int profileId);
        Task<bool> SendFriendRequestAsync(int profileId, int profileIdFriend);
        Task<bool> AcceptFriendRequestAsync(int profileId, int profileIdFriend);
        Task<bool> RejectFriendRequestAsync(int profileId, int profileIdFriend);
    }
}
