using DataTransferObject.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultCreateAccountDto : OperationResultDto
    {
        public OperationResultCreateAccountDto(bool IsSuccess, string MessageResponse, EnumCreateAccountStatus status) : base(IsSuccess, MessageResponse)
        {
            this.status = status;
        }

        public OperationResultCreateAccountDto(bool IsSuccess, string MessageResponse, EnumCreateAccountStatus status, ProfileDto profileDto) : base(IsSuccess, MessageResponse)
        {
            this.status = status;
            this.ProfileDto= profileDto;
        }

        [DataMember]
        public EnumCreateAccountStatus status { get; set; }
        [DataMember]
        ProfileDto ProfileDto { get; set; }

    }
}
