using System.Runtime.Serialization;

namespace DataTransferObject.Enums
{
    [DataContract]
    public enum EnumCreateAccountStatus
    {
        [EnumMember]
        ExistsName = 0,
        [EnumMember]
        ExistsAccount = 1,
        [EnumMember]
        ErrorSaving = 2,
        [EnumMember]
        SuccessSave = 3,
    }
}
