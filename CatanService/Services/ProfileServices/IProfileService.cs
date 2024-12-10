using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanService.DataTransferObject;
using CatanDataAccess.Domain;
using CatanService.DataTransferObject.ResultDtos;

namespace CatanService.Services
{
    public interface IProfileService
    {
        ProfileDto CreateProfileDto(Profile profileRecord);
        Task <Profile> CreateProfileEntityAsync(string name, Account accountRecord);
        Task <bool> IsValidProfileName(string name);
        Task<bool> IsProfileNameRegisteredInDataBaseAsync(string profileName);
        Task<OperationResultProfileDto> ChangeProfileNameInDataBaseAsync(ProfileDto profileClientDto);
        Task<OperationResultProfileDto> UploadProfilePictureInDataBaseAsync(ProfileDto profileClientDto, Byte[] imageBytes);
        Task<OperationResultPictureDto> GetProfilePictureInDataBaseAsync(ProfileDto profileClientDto);
        Task<Profile> GetProfileWithNewSessionId(int accountId);
        Task<bool> IsOnline(int idProfile, string newSessionId);
        Task<bool> InviteFriendsToGameInDataBaseAsync(string namePlayerToInvite, string keyAccess);
        bool IsActiveWithinTimeLimite(DateTime? lastActivity, DateTime? newActivity, int timeLimit);
        Task<OperationResultProfileListDto> GetFriendsListInDataBaseAsync(ProfileDto profileClientDto);
        Task<OperationResultProfileListDto> GetPendingFriendRequestsInDataBaseAsync(ProfileDto profileClientDto);
        Task<OperationResultFriendRequestDto> SendFriendRequestInDataBaseAsync(string nameFriendToInvite, ProfileDto profileClientDto);
        Task<bool> AcceptFriendRequestInDataBaseAsync(string nameFriendToAccept, ProfileDto profileClientDto);
        Task<bool> RejectFriendRequestInDataBaseAsync(string nameFriendToReject, ProfileDto profileClientDto);
        Task<OperationResultPictureDto> GetFriendPictureInDataBaseAsync(ProfileDto profileFriendDto, string preferredLanguage);
        Task<bool> DeleteFriendProfileInDataBaseAsync(string friendName, ProfileDto profileClientDto);
    }
}
