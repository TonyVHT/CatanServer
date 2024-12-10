using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Net.PeerToPeer;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using Serilog;

namespace CatanDataAccess.Repositories.ProfileRepositories
{
    public class ProfileRepository : Repository<Profile>, IProfileRepository
    {
        public ProfileRepository(DbContext dbContext) : base(dbContext)
        { }

        public async Task<List<Profile>> GetFriendsByProfileIdAsync(int profileId)
        {
            List<Profile> friendList = new List<Profile>();

            try
            {
                friendList = await dbDomain.Where(profile => profile.Id != profileId && 
                    (profile.RelationSentFriendRequests.Any(friendRequest =>
                    friendRequest.ReceiverProfileId == profileId && friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_ACCEPTED) ||
                    profile.RelationReceivedFriendRequests.Any(friendRequest =>
                    friendRequest.SenderProfileId == profileId && friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_ACCEPTED))).ToListAsync();
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

            return friendList;
        }

        public async Task<List<Profile>> GetPendingFriendRequestsByProfileIdAsync(int profileId)
        {
            List<Profile> pendingRequests = new List<Profile>();
            try
            {
                pendingRequests = await dbDomain.Where(profile => profile.Id != profileId && profile.RelationSentFriendRequests.Any(friendRequest =>
                    friendRequest.ReceiverProfileId == profileId && friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_PENDING)).ToListAsync();

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

            return pendingRequests;
        }


        public async Task<int> GetProfileIdByNameAsync(string nameProfile)
        {
            try
            {
                Profile profileRecord = await dbDomain.FirstOrDefaultAsync(profile => profile.Name == nameProfile);

                if (profileRecord != null)
                {
                    return profileRecord.Id;
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

            return CharacterUtilities.INT_VALUE_ZERO;
        }

        public async Task<bool> IsProfileNameRegisteredAsync(string name)
        {
            bool isNameRegisered = false;

            try
            {
                Profile profileRecord = await dbDomain.FirstOrDefaultAsync(profile => profile.Name == name);

                if (profileRecord != null)
                {
                    isNameRegisered = true;
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

            return isNameRegisered;
        }

        public async Task<bool> SendFriendRequestAsync(int profileId, int profileIdFriend)
        {
            bool isSuccessful = false;

            try
            {
                Profile profile = await dbDomain.FindAsync(profileId);
                Profile profileFriend = await dbDomain.FindAsync(profileIdFriend);

                if (profile != null && profileFriend != null)
                {
                    return TryAddFriendRequest(profile, profileFriend, profileId, profileIdFriend);
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

            return isSuccessful;
        }

        private static bool TryAddFriendRequest(Profile senderProfile, Profile receiverProfile, int senderId, int receiverId)
        {
            if (!senderProfile.RelationSentFriendRequests.Any(fr => fr.ReceiverProfileId == receiverId) &&
                !senderProfile.RelationReceivedFriendRequests.Any(fr => fr.SenderProfileId == senderId))
            {
                FriendRequest friendRequest = new FriendRequest
                {
                    Date = DateTime.Now,
                    SenderProfileId = senderId,
                    ReceiverProfileId = receiverId,
                    Status = FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_PENDING
                };

                senderProfile.RelationSentFriendRequests.Add(friendRequest);
                receiverProfile.RelationReceivedFriendRequests.Add(friendRequest);

                return true; 
            }

            return false; 
        }


        public async Task<bool> AcceptFriendRequestAsync(int profileId, int profileIdFriend)
        {
            bool isSuccessful = false;

            try
            {
                Profile profile = await dbDomain.FindAsync(profileId);
                Profile profileFriend = await dbDomain.FindAsync(profileIdFriend);

                if (profile != null && profileFriend != null)
                {
                    FriendRequest friendRequestFriend = profile.RelationReceivedFriendRequests.FirstOrDefault(friendRequest =>
                        friendRequest.SenderProfileId == profileIdFriend && friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_PENDING);

                    if (friendRequestFriend != null)
                    {
                        friendRequestFriend.Status = FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_ACCEPTED;
                        isSuccessful = true;
                    }
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

            return isSuccessful;
        }

        public async Task<bool> RejectFriendRequestAsync(int profileId, int profileIdFriend)
        {
            bool isSuccessful = false;

            try
            {
                Profile profile = await dbDomain.FindAsync(profileId);
                Profile profileFriend = await dbDomain.FindAsync(profileIdFriend);

                if (profile != null && profileFriend != null)
                {
                    FriendRequest friendRequestFriend = profile.RelationReceivedFriendRequests.FirstOrDefault(friendRequest =>
                        friendRequest.SenderProfileId == profileIdFriend && friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_PENDING);

                    if (friendRequestFriend != null)
                    {
                        friendRequestFriend.Status = FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_REJECTED;
                        isSuccessful = true;
                    }
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

            return isSuccessful;
        }

        public async Task<Profile> GetProfileByNameAsync(string nameProfile)
        {
            Profile profileRecord = null;
            try
            {
                profileRecord = await dbDomain.FirstOrDefaultAsync(profile => profile.Name == nameProfile);

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

            return profileRecord;
        }
    }
}
