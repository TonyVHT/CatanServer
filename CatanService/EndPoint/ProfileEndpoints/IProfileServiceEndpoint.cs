using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using CatanService.DataTransferObject;
using CatanService.DataTransferObject.ResultDtos;

namespace CatanService.EndPoint
{
    /// <summary>
    /// Defines the contract for profile-related operations, such as managing profile names, pictures, and friend interactions.
    /// </summary>
    [ServiceContract]
    public interface IProfileServiceEndpoint
    {
        /// <summary>
        /// Changes the name of a player's profile.
        /// </summary>
        /// <param name="profileClientDto">The profile data with the new name.</param>
        /// <returns>A result object containing the updated profile data.</returns>
        [OperationContract]
        Task<OperationResultProfileDto> ChangeProfileName(ProfileDto profileClientDto);

        /// <summary>
        /// Uploads a new profile picture for a player.
        /// </summary>
        /// <param name="profileClientDto">The profile data associated with the picture.</param>
        /// <param name="imageBytes">The image data to upload.</param>
        /// <returns>A result object indicating the success or failure of the operation.</returns>
        [OperationContract]
        Task<OperationResultProfileDto> UploadProfilePictureAsync(ProfileDto profileClientDto, byte[] imageBytes);

        /// <summary>
        /// Retrieves the profile picture for a player.
        /// </summary>
        /// <param name="profileClientDto">The profile data for which the picture is requested.</param>
        /// <returns>A result object containing the profile picture data.</returns>
        [OperationContract]
        Task<OperationResultPictureDto> GetProfilePictureAsync(ProfileDto profileClientDto);

        /// <summary>
        /// Retrieves the profile picture of a player's friend.
        /// </summary>
        /// <param name="profileFriendDto">The friend's profile data.</param>
        /// <param name="preferredLanguage">The preferred language for any messages.</param>
        /// <returns>A result object containing the friend's profile picture data.</returns>
        [OperationContract]
        Task<OperationResultPictureDto> GetFriendsPictureAsync(ProfileDto profileFriendDto, string preferredLanguage);

        /// <summary>
        /// Invites a friend to join a game.
        /// </summary>
        /// <param name="nameFriendToInvite">The name of the friend to invite.</param>
        /// <param name="profileClientDto">The profile data of the inviting player.</param>
        /// <param name="accessKey">The access key for the game.</param>
        /// <returns>True if the invitation was sent successfully; otherwise, false.</returns>
        [OperationContract]
        Task<bool> InviteFriendsToGame(string nameFriendToInvite, ProfileDto profileClientDto, string accessKey);

        /// <summary>
        /// Retrieves the list of friends for a player's profile.
        /// </summary>
        /// <param name="profileClientDto">The profile data of the player.</param>
        /// <returns>A result object containing the list of friends.</returns>
        [OperationContract]
        Task<OperationResultProfileListDto> GetFriendsListAsync(ProfileDto profileClientDto);

        /// <summary>
        /// Retrieves the list of pending friend requests for a player's profile.
        /// </summary>
        /// <param name="profileClientDto">The profile data of the player.</param>
        /// <returns>A result object containing the list of pending friend requests.</returns>
        [OperationContract]
        Task<OperationResultProfileListDto> GetPendingFriendRequests(ProfileDto profileClientDto);

        /// <summary>
        /// Sends a friend request to another player.
        /// </summary>
        /// <param name="nameFriendToInvite">The name of the player to invite.</param>
        /// <param name="profileClientDto">The profile data of the player sending the request.</param>
        /// <returns>True if the request was sent successfully; otherwise, false.</returns>
        [OperationContract]
        Task<OperationResultFriendRequestDto> SendFriendRequestAsync(string nameFriendToInvite, ProfileDto profileClientDto);

        /// <summary>
        /// Accepts a pending friend request.
        /// </summary>
        /// <param name="nameFriendToAccept">The name of the friend to accept.</param>
        /// <param name="profileClientDto">The profile data of the player accepting the request.</param>
        /// <returns>True if the request was accepted successfully; otherwise, false.</returns>
        [OperationContract]
        Task<bool> AcceptFriendRequestAsync(string nameFriendToAccept, ProfileDto profileClientDto);

        /// <summary>
        /// Rejects a pending friend request.
        /// </summary>
        /// <param name="nameFriendToReject">The name of the friend to reject.</param>
        /// <param name="profileClientDto">The profile data of the player rejecting the request.</param>
        /// <returns>True if the request was rejected successfully; otherwise, false.</returns>
        [OperationContract]
        Task<bool> RejectFriendRequestAsync(string nameFriendToReject, ProfileDto profileClientDto);

        /// <summary>
        /// Deletes a friend from a player's profile.
        /// </summary>
        /// <param name="friendName">The name of the friend to delete.</param>
        /// <param name="profileClientDto">The profile data of the player deleting the friend.</param>
        /// <returns>True if the friend was deleted successfully; otherwise, false.</returns>
        [OperationContract]
        Task<bool> DeleteFriendProfile(string friendName, ProfileDto profileClientDto);
    }
}
