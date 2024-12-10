using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using CatanService.DataTransferObject.Enums;
using DataTransferObject.Enums;

namespace CatanService.DataTransferObject.ResultDtos
{
    [DataContract]
    public class OperationResultFriendRequestDto : OperationResultDto
    {
        public OperationResultFriendRequestDto(bool IsSuccess, string MessageResponse, EnumSendFriendRequest statusFriendReques) : base(IsSuccess, MessageResponse)
        {
            this.StatusSendFriendRequest = statusFriendReques;
        }

        [DataMember]
        public EnumSendFriendRequest StatusSendFriendRequest { get; set; }

    }
}
