using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using CatanDataAccess.Repositories.FriendRequestRepositories;
using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories
{
    public class FriendRequestRepository : Repository<FriendRequest>, IFriendRequestRepository
    {
        public FriendRequestRepository(DbContext dbContext) : base(dbContext)
        {
        }
        public async Task<bool> DeleteFriendRequestAsync(int senderProfileId, int receiverProfileId)
        {
            bool isDeleted = false;

            try
            {
                FriendRequest friendRequest = await dbDomain.FirstOrDefaultAsync(friend =>
                    friend.SenderProfileId == senderProfileId && friend.ReceiverProfileId == receiverProfileId 
                    || friend.SenderProfileId == receiverProfileId && friend.ReceiverProfileId == senderProfileId);


                if (friendRequest != null)
                {
                    friendRequest.Status = FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_DELETED;
                    isDeleted = true;
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isDeleted;
        }

        public async Task<bool> ExistsAFriendRequestAsync(int profileId, int profileIdFriend)
        {
            bool exists = false;

            try
            {
                exists = await dbDomain.AnyAsync(friendRequest => friendRequest.SenderProfileId == profileId
                && friendRequest.ReceiverProfileId == profileIdFriend);
            }
            catch(ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return exists;
        }

        public async Task<FriendRequest> GetFriendRequestById(int profileId, int profileIdFriend)
        {
            FriendRequest friendRequest = null;

            try
            {
                friendRequest = await dbDomain.FirstOrDefaultAsync(fr =>
                    (fr.SenderProfileId == profileId && fr.ReceiverProfileId == profileIdFriend) ||
                    (fr.SenderProfileId == profileIdFriend && fr.ReceiverProfileId == profileId));
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return friendRequest;
        }
    }
}
