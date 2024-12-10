using System.Runtime.Serialization;

namespace DataTransferObject.Enums
{
    [DataContract]
    public enum EnumAuthenticationStatus
    {
        [EnumMember]
        Incorrect = 0,
        [EnumMember]
        NotVerified = 1,
        [EnumMember]
        Verified = 2,
        [EnumMember]
        InGame = 3,
        [EnumMember]
        ServerNotFound = 4,
    }
}



