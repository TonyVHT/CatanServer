using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories.FriendRequestRepositories
{
    public interface IFriendRequestRepository : IRepository<FriendRequest>
    {
        Task <bool> ExistsAFriendRequestAsync(int profileId, int profileIdFriend);
        Task<bool> DeleteFriendRequestAsync(int senderProfileId, int receiverProfileId);
        Task<FriendRequest> GetFriendRequestById(int profileId, int profileIdFriend);
    }
}
