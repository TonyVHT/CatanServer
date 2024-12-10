using CatanService.DataTransferObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Helper;
using CatanDataAccess.Helpers;
using CatanService.Services;
using DataTransferObject.Enums;
using Microsoft.IdentityModel.Tokens;
using CatanService.Helpers;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.DataTransferObject.Enums;

namespace CatanService.EndPoint
{
    public class ProfileServiceEndpoint : IProfileServiceEndpoint
    {
        private readonly IServiceManager serviceManager;
        public ProfileServiceEndpoint(IServiceManager serviceManager)
        {
            this.serviceManager = serviceManager;
        }

        public async Task<bool> AcceptFriendRequestAsync(string nameFriendToAccept, ProfileDto profileClientDto)
        {
            if (!string.IsNullOrEmpty(nameFriendToAccept) && profileClientDto != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.AcceptFriendRequestInDataBaseAsync(nameFriendToAccept, profileClientDto);
            }

            return false;
        }

        public async Task<OperationResultProfileDto> ChangeProfileName(ProfileDto profileClientDto)
        {
            if(profileClientDto != null && !profileClientDto.Name.StartsWith(AccountValidationUtilities.GUEST_USER_RESERVED_NAME)
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.ChangeProfileNameInDataBaseAsync(profileClientDto);
            }

            return new OperationResultProfileDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX),
                EnumChangeAccountRegister.UnableToSaveData);
        }

        public async Task<bool> DeleteFriendProfile(string friendName, ProfileDto profileClientDto)
        {
            if (!string.IsNullOrEmpty(friendName) && profileClientDto != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.DeleteFriendProfileInDataBaseAsync(friendName, profileClientDto);
            }
            return false;
        }

        public async Task<OperationResultProfileListDto> GetFriendsListAsync(ProfileDto profileClientDto)
        {
            if (profileClientDto != null && profileClientDto.Id != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.GetFriendsListInDataBaseAsync(profileClientDto);
            }
            return new OperationResultProfileListDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultPictureDto> GetFriendsPictureAsync(ProfileDto profileFriendDto, string preferredLanguage)
        {
            if (profileFriendDto != null && profileFriendDto.Id != null)
            {
                return await serviceManager.ProfileService.GetFriendPictureInDataBaseAsync(profileFriendDto, preferredLanguage);
            }
            return new OperationResultPictureDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultProfileListDto> GetPendingFriendRequests(ProfileDto profileClientDto)
        {
            if (profileClientDto != null && profileClientDto.Id != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.GetPendingFriendRequestsInDataBaseAsync(profileClientDto);
            }

            return new OperationResultProfileListDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<OperationResultPictureDto> GetProfilePictureAsync(ProfileDto profileClientDto)
        {
            if(profileClientDto != null && profileClientDto.Id != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.GetProfilePictureInDataBaseAsync(profileClientDto);
            }
            return new OperationResultPictureDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }

        public async Task<bool> InviteFriendsToGame(string nameFriendToInvite, ProfileDto profileClientDto, string accessKey)
        {
            if (!string.IsNullOrEmpty(nameFriendToInvite) && !string.IsNullOrEmpty(accessKey) && profileClientDto != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.InviteFriendsToGameInDataBaseAsync(nameFriendToInvite, accessKey);
            }
            return false;
        }

        public async Task<bool> RejectFriendRequestAsync(string nameFriendToReject, ProfileDto profileClientDto)
        {
            if (!string.IsNullOrEmpty(nameFriendToReject) && profileClientDto != null
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID))
            {
                return await serviceManager.ProfileService.RejectFriendRequestInDataBaseAsync(nameFriendToReject, profileClientDto);
            }
            return false;
        }

        public async Task<OperationResultFriendRequestDto> SendFriendRequestAsync(string nameFriendToInvite, ProfileDto profileClientDto)
        {
            if (!string.IsNullOrEmpty(nameFriendToInvite) && profileClientDto != null 
                && await serviceManager.ProfileService.IsOnline((int)profileClientDto.Id, profileClientDto.CurrentSessionID)
                && profileClientDto.Name != nameFriendToInvite)
            {
                return await serviceManager.ProfileService.SendFriendRequestInDataBaseAsync(nameFriendToInvite, profileClientDto);
            }

            return new OperationResultFriendRequestDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX), EnumSendFriendRequest.ErrorSaving);
        }

        public async Task<OperationResultProfileDto> UploadProfilePictureAsync(ProfileDto profileClientDto, byte[] imageBytes)
        {
            if (profileClientDto != null && profileClientDto.Id != null && imageBytes != null && imageBytes.Length > AccountValidationUtilities.PICTURE_MINIMUN_SIZE 
                && imageBytes.Length <= ProfileUtilities.PICTURE_MAX_SIZE)
            {
                return await serviceManager.ProfileService.UploadProfilePictureInDataBaseAsync(profileClientDto, imageBytes);
            }
            return new OperationResultProfileDto(false, LanguageUtilities.MessageUnableToSaveData(LanguageUtilities.LANGUAGE_ENGLISH_FORMAT_RESX));
        }
    }
}
