using System.Runtime.Serialization;

namespace DataTransferObject.Enums
{
    [DataContract]
    public enum EnumChangeAccountRegister
    {
        [EnumMember]
        Success = 0,
        [EnumMember]
        Invalid = 1,
        [EnumMember]
        AlreadyExists = 2,
        [EnumMember]
        UnableToSaveData = 3
    }
}
