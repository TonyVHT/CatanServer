using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.Enums
{
    [DataContract]
    public enum EnumSendFriendRequest
    {
        [EnumMember]
        NotFoundProfile = 0,
        [EnumMember]
        ExistsFriendRequest = 1,
        [EnumMember]
        ErrorSaving = 2,
        [EnumMember]
        SuccessSave = 3,
        [EnumMember]
        DeleteFriend = 4,
    }
}
