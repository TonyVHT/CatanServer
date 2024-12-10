using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using CatanDataAccess.Repositories;
using CatanService.DataTransferObject;
using Serilog;
using System;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using DataTransferObject.Enums;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Security;
using System.Collections.Generic;
using System.Linq;
using CatanService.Helpers;
using CatanService.DataTransferObject.ResultDtos;
using CatanService.DataTransferObject.Enums;

namespace CatanService.Services
{
    public class ProfileService : IProfileService
    {
        private readonly IRepositoryManager repositoryManager;
        private readonly IServiceManager serviceManager;
        public ProfileService(IRepositoryManager repositoryManager, IServiceManager serviceManager)
        {
            this.repositoryManager = repositoryManager;
            this.serviceManager = serviceManager;
        }

        public async Task<OperationResultProfileDto> ChangeProfileNameInDataBaseAsync(ProfileDto profileClientDto)
        {
            bool isProfileNameExists = await repositoryManager.ProfileRepository.IsProfileNameRegisteredAsync(profileClientDto.Name);

            if (isProfileNameExists)
            {
                return new OperationResultProfileDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(profileClientDto.PreferredLanguage), null,
                    EnumChangeAccountRegister.AlreadyExists);
            }
            else if (await HandleSaveProfileNewName(profileClientDto))
            {
                return new OperationResultProfileDto(true, LanguageUtilities.MessageDataBaseSuccessFullySave(profileClientDto.PreferredLanguage), profileClientDto,
                    EnumChangeAccountRegister.Success);
            }
            return new OperationResultProfileDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(profileClientDto.PreferredLanguage),
                EnumChangeAccountRegister.UnableToSaveData);
        }

        public async Task<bool> HandleSaveProfileNewName(ProfileDto profileClientDto)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id);
            if (profileRecord != null)
            {
                profileRecord.Name = profileClientDto.Name;
                await repositoryManager.SaveAsync();
                return true;
            }
            return false;
        }

        public ProfileDto CreateProfileDto(Profile profileRecord)
        {
            ProfileDto profileDto = new ProfileDto();
            profileDto.Name = profileRecord.Name;
            profileDto.Id = profileRecord.Id;
            profileDto.CurrentSessionID = profileRecord.SessionId;
            profileDto.PictureVersion = profileRecord.PictureVersion;
            profileDto.IsOnline = profileRecord.IsOnline;

            return profileDto;
        }

        public static ProfileDto CreateProfileFriendDto(Profile profileRecord)
        {
            ProfileDto profileDto = new ProfileDto();
            profileDto.Id = profileRecord.Id;
            profileDto.Name = profileRecord.Name;
            profileDto.PictureVersion = profileRecord.PictureVersion;
            profileDto.IsOnline = profileRecord.IsOnline;

            return profileDto;
        }

        public async Task<Profile> CreateProfileEntityAsync(string name, Account accountRecord)
        {
            Profile profileRecord = null;

            if (await IsValidProfileName(name))
            {
                profileRecord = new Profile();
                profileRecord.Id = accountRecord.Id;
                profileRecord.Name = name;
                profileRecord.PicturePath = null;
            }

            await repositoryManager.SaveAsync();

            return profileRecord;
        }

        public async Task<bool> IsProfileNameRegisteredInDataBaseAsync(string profileName)
        {
            return await repositoryManager.ProfileRepository.IsProfileNameRegisteredAsync(profileName);
        }

        public async Task<bool> IsValidProfileName(string name)
        {
            bool isCorrectName = false;

            if (!string.IsNullOrEmpty(name) && name.Length >= AccountValidationUtilities.USERNAME_MIN_LENGTH && name.Length <= AccountValidationUtilities.USERNAME_MAX_LENGTH)
            {
                try
                {
                    const string nameRegex = AccountValidationUtilities.REGEX_PROFILE_NAME_VALIDATION;

                    isCorrectName = Regex.IsMatch(name, nameRegex, RegexOptions.None, TimeSpan.FromMilliseconds(1000));

                }
                catch (ArgumentException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (RegexMatchTimeoutException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }

            return await Task.FromResult(isCorrectName);
        }
        public async Task<OperationResultProfileDto> UploadProfilePictureInDataBaseAsync(ProfileDto profileClientDto, byte[] imageBytes)
        {
            try
            {
                string pictureExtension = GetImageExtension(imageBytes);
                if (!string.IsNullOrEmpty(pictureExtension) && (pictureExtension == ProfileUtilities.PICTURE_EXTENSION_PNG || pictureExtension == ProfileUtilities.PICTURE_EXTENSION_JPG))
                {
                    string picturePath = GetProfilePicturePath((int)profileClientDto.Id, pictureExtension);

                    Directory.CreateDirectory(Path.GetDirectoryName(picturePath));

                    await SaveImageAsync(picturePath, imageBytes);

                    await UpdateProfilePicturePath(profileClientDto, picturePath);

                    return new OperationResultProfileDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), profileClientDto);
                }
            }
            catch (UnauthorizedAccessException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (IOException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return new OperationResultProfileDto(false, LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage));
        }

        private static string GetImageExtension(byte[] pictureBytes)
        {
            using (MemoryStream pictureStream = new MemoryStream(pictureBytes))
            using (Image image = Image.FromStream(pictureStream))
            {
                if (image.RawFormat.Equals(ImageFormat.Jpeg))
                {
                    return ProfileUtilities.PICTURE_EXTENSION_JPG;
                }
                else if (image.RawFormat.Equals(ImageFormat.Png))
                {
                    return ProfileUtilities.PICTURE_EXTENSION_PNG;
                }
            }
            return string.Empty;
        }

        private static async Task SaveImageAsync(string filePath, byte[] imageBytes)
        {
            try
            {
                using (var fileStream = new FileStream(filePath, FileMode.Create, FileAccess.Write, FileShare.None, 4096, useAsync: true))
                {
                    await fileStream.WriteAsync(imageBytes, 0, imageBytes.Length);
                }
            }
            catch (NotSupportedException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (FileNotFoundException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (IOException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (SecurityException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (UnauthorizedAccessException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }

        private async Task UpdateProfilePicturePath(ProfileDto profileClientDto, string relativeFilePath)
        {
            Profile profile = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id);
            if (profile != null)
            {
                profile.PicturePath = relativeFilePath;
                profile.PictureVersion++;
                await repositoryManager.SaveAsync();
            }
        }

        private static string GetProfilePicturePath(int profileId, string fileExtension)
        {
            string pathFolder = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProfileUtilities.PICTURE_FILE_DIRECTORY, profileId.ToString());
            string fileName = $"{Guid.NewGuid()}.{fileExtension}";
            return Path.Combine(pathFolder, fileName);
        }

        public async Task<OperationResultPictureDto> GetFriendPictureInDataBaseAsync(ProfileDto profileFriendDto, string preferredLanguage)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileFriendDto.Id);

            byte[] imageBytes = HandleGetProfilePictureFromDisk(profileRecord);

            if (imageBytes != null)
            {
                return new OperationResultPictureDto(true, LanguageUtilities.MessageSuccess(preferredLanguage), imageBytes);
            }
            else
            {
                return new OperationResultPictureDto(false, LanguageUtilities.MessageUnableToSaveData(preferredLanguage));
            }
            
        }

        public async Task<OperationResultPictureDto> GetProfilePictureInDataBaseAsync(ProfileDto profileClientDto)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync((int)profileClientDto.Id);
            byte[] imageBytes = HandleGetProfilePictureFromDisk(profileRecord);

            if (imageBytes != null)
            {
                return new OperationResultPictureDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), imageBytes);
            }
            else
            {
                return new OperationResultPictureDto(false, LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage));
            }
        }

        public static byte[] HandleGetProfilePictureFromDisk(Profile profileRecord)
        {
            byte[] imageBytes = new byte[0];

            try
            {
                if (profileRecord != null && !string.IsNullOrEmpty(profileRecord.PicturePath) && File.Exists(profileRecord.PicturePath))
                {
                    FileInfo fileInfo = new FileInfo(profileRecord.PicturePath);
                    string extension = Path.GetExtension(profileRecord.PicturePath)?.ToLower();

                    if ((extension == ProfileUtilities.PICTURE_EXTENSION_PNG || extension == ProfileUtilities.PICTURE_EXTENSION_JPG) && 
                        fileInfo.Length > AccountValidationUtilities.PICTURE_MINIMUN_SIZE && fileInfo.Length <= ProfileUtilities.PICTURE_MAX_SIZE)
                    {

                        using (var image = Image.FromFile(profileRecord.PicturePath))
                        {
                            imageBytes = File.ReadAllBytes(profileRecord.PicturePath);
                        }
                    }
                }
            }
            catch(ArgumentException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (FileNotFoundException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (UnauthorizedAccessException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (IOException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return imageBytes;
        }
        public async Task<Profile> GetProfileWithNewSessionId(int accountId)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync(accountId);
            if (profileRecord != null)
            {
                profileRecord.SessionId = Guid.NewGuid().ToString();
                profileRecord.IsOnline = true;
                profileRecord.LastActivity = DateTime.UtcNow;
                await repositoryManager.SaveAsync();
            }
            return profileRecord;
        }
        public static bool CompareSessionID(string oldSessionId, string newSessionId)
        {
            return oldSessionId.Equals(newSessionId);
        }
        public async Task<bool> IsOnline(int idProfile, string newSessionId)
        {
            bool isOnline = false;
            Profile profileRecord = await repositoryManager.ProfileRepository.FindEntityByIdAsync(idProfile);

            if (profileRecord != null && !string.IsNullOrEmpty(newSessionId)
                && IsActiveWithinTimeLimite(profileRecord.LastActivity, DateTime.UtcNow, GameUtilities.TIME_LIMIT_TO_DISCONNECT_PLAYERS) && 
                CompareSessionID(profileRecord.SessionId, newSessionId))
            {
                profileRecord.LastActivity = DateTime.UtcNow;
                isOnline = true;
            }
            else if(profileRecord != null)
            {
                profileRecord.IsOnline = false;
            }

            await repositoryManager.SaveAsync();

            return isOnline;
        }
        public bool IsActiveWithinTimeLimite(DateTime? lastActivity, DateTime? newActivity, int timeLimit)
        {
            bool isOnline = false;
            if (lastActivity != null && newActivity != null)
            {
                Double timeDifference = (newActivity.Value - lastActivity.Value).TotalMinutes;

                isOnline = timeDifference < timeLimit;
            }

            return isOnline;
        }

        public async Task<bool> InviteFriendsToGameInDataBaseAsync(string namePlayerToInvite, string keyAccess)
        {
            int accountId = await repositoryManager.ProfileRepository.GetProfileIdByNameAsync(namePlayerToInvite);

            if (accountId != CharacterUtilities.INT_VALUE_ZERO)
            {
                Account accountRecord = await repositoryManager.AccountRepository.FindEntityByIdAsync(accountId);

                await serviceManager.AccountService.SendInviteGameToFriends(accountRecord, keyAccess);

                return true;
            }

            return false;
        }

        public async Task<OperationResultProfileListDto> GetFriendsListInDataBaseAsync(ProfileDto profileClientDto)
        {
            List<Profile> friendList = await repositoryManager.ProfileRepository.GetFriendsByProfileIdAsync((int)profileClientDto.Id);
            List<ProfileDto> friendListDto = new List<ProfileDto>();

            if (friendList.Any())
            {
                friendListDto = ConvertFriendListIntoFriendListDto(friendList);

            }
            return new OperationResultProfileListDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), friendListDto);
        }

        public async Task<OperationResultProfileListDto> GetPendingFriendRequestsInDataBaseAsync(ProfileDto profileClientDto)
        {
            List<Profile> pendingFriendRequests = await repositoryManager.ProfileRepository.GetPendingFriendRequestsByProfileIdAsync((int)profileClientDto.Id);
            List<ProfileDto> pendingFriendRequestsDto = new List<ProfileDto>();

            if (pendingFriendRequests.Any())
            {
                pendingFriendRequestsDto = ConvertFriendListIntoFriendListDto(pendingFriendRequests);
            }

            return new OperationResultProfileListDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), pendingFriendRequestsDto);
        }

        public static List<ProfileDto> ConvertFriendListIntoFriendListDto(List<Profile> friendList)
        {
            List<ProfileDto> friendListDto = new List<ProfileDto>();

            foreach (Profile friend in friendList)
            {
                ProfileDto profileServerdto = CreateProfileFriendDto(friend);
                friendListDto.Add(profileServerdto);
            }

            return friendListDto;
        }

        public async Task<OperationResultFriendRequestDto> SendFriendRequestInDataBaseAsync(string nameFriendToInvite, ProfileDto profileClientDto)
        {
            bool isSuccessSend = false;
            int idfriend = await repositoryManager.ProfileRepository.GetProfileIdByNameAsync(nameFriendToInvite);

            if(idfriend == CharacterUtilities.INT_VALUE_ZERO)
            {
                return new OperationResultFriendRequestDto(isSuccessSend, 
                    LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage), EnumSendFriendRequest.NotFoundProfile);
            }

            bool existsFriendRequest = await repositoryManager.FriendRequestRepository.ExistsAFriendRequestAsync((int)profileClientDto.Id, idfriend);

            if (!existsFriendRequest)
            {
                isSuccessSend = await repositoryManager.ProfileRepository.SendFriendRequestAsync((int)profileClientDto.Id, idfriend);
                await repositoryManager.SaveAsync();
                return new OperationResultFriendRequestDto(isSuccessSend, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), EnumSendFriendRequest.SuccessSave);
            }

            FriendRequest friendRequest = await repositoryManager.FriendRequestRepository.GetFriendRequestById(idfriend, (int)profileClientDto.Id);
            
            if (friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_DELETED)
            {
                return new OperationResultFriendRequestDto(isSuccessSend, 
                    LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage), EnumSendFriendRequest.DeleteFriend);
            }else if(friendRequest.Status == FriendRequestStatusUtilities.FRIEND_REQUEST_STATUS_PENDING)
            {
                return new OperationResultFriendRequestDto(isSuccessSend,
                    LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage), EnumSendFriendRequest.ExistsFriendRequest);
            }

            return new OperationResultFriendRequestDto(isSuccessSend,
                LanguageUtilities.MessageUnableToSaveData(profileClientDto.PreferredLanguage), EnumSendFriendRequest.ErrorSaving);
        }

        public async Task<bool> AcceptFriendRequestInDataBaseAsync(string nameFriendToAccept, ProfileDto profileClientDto)
        {
            bool isSuccessAccept = false;
            int idFriend = await repositoryManager.ProfileRepository.GetProfileIdByNameAsync(nameFriendToAccept);

            if (idFriend != CharacterUtilities.INT_VALUE_ZERO)
            {
                isSuccessAccept = await repositoryManager.ProfileRepository.AcceptFriendRequestAsync((int)profileClientDto.Id, idFriend);
                await repositoryManager.SaveAsync();
            }

            return isSuccessAccept;
        }

        public async Task<bool> RejectFriendRequestInDataBaseAsync(string nameFriendToReject, ProfileDto profileClientDto)
        {
            bool isSuccessReject = false;
            int idFriend = await repositoryManager.ProfileRepository.GetProfileIdByNameAsync(nameFriendToReject);

            if (idFriend != CharacterUtilities.INT_VALUE_ZERO)
            {
                isSuccessReject = await repositoryManager.ProfileRepository.RejectFriendRequestAsync((int)profileClientDto.Id, idFriend);
                await repositoryManager.SaveAsync();
            }

            return isSuccessReject;
        }

        public async Task<bool> DeleteFriendProfileInDataBaseAsync(string friendName, ProfileDto profileClientDto)
        {
            bool isSuccessDelete = false;
            int idProfileFriend = await repositoryManager.ProfileRepository.GetProfileIdByNameAsync(friendName);

            if (idProfileFriend != CharacterUtilities.INT_VALUE_ZERO)
            {
                isSuccessDelete = await repositoryManager.FriendRequestRepository.
                    DeleteFriendRequestAsync((int)profileClientDto.Id, idProfileFriend);

                await repositoryManager.SaveAsync();

            }
            
            return isSuccessDelete;
        }
    }
}
