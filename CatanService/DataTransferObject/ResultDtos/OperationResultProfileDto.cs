using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using CatanDataAccess.Domain;
using System.Text;
using System.Threading.Tasks;
using System.Buffers;
using DataTransferObject.Enums;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultProfileDto : OperationResultDto
    {
        public OperationResultProfileDto(bool IsSuccess, string MessageResponse, ProfileDto profile, EnumAuthenticationStatus Status) : base(IsSuccess, MessageResponse)
        {
            this.ProfileDto = profile;
            this.AunthenticationStatus = Status;
        }
        public OperationResultProfileDto(bool IsSuccess, string MessageResponse, ProfileDto profile, EnumChangeAccountRegister status) : base(IsSuccess, MessageResponse)
        {
            this.ProfileDto = profile;
            this.ChangeAccountRegister = status;
        }
        public OperationResultProfileDto(bool IsSuccess, string MessageResponse, ProfileDto profile) : base(IsSuccess, MessageResponse)
        {
            this.ProfileDto = profile;
        }
        public OperationResultProfileDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }

        public OperationResultProfileDto(bool IsSuccess, string MessageResponse, EnumChangeAccountRegister status) : base(IsSuccess, MessageResponse)
        {
            this.ChangeAccountRegister = status;
        }

        public OperationResultProfileDto(bool IsSuccess, string MessageResponse, EnumAuthenticationStatus Status) : base(IsSuccess, MessageResponse)
        {
            this.AunthenticationStatus = Status;
        }

        [DataMember]
        public ProfileDto ProfileDto { get; set; }
        [DataMember]
        public EnumAuthenticationStatus AunthenticationStatus { get; set; }
        [DataMember]
        public EnumChangeAccountRegister ChangeAccountRegister { get; set; }
    }
}
