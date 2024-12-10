using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultGuestAccountDto : OperationResultDto
    {
        public OperationResultGuestAccountDto(bool IsSuccess, string MessageResponse, GuestAccountDto guestAccount) : base(IsSuccess, MessageResponse)
        {
            this.GuestAccount = guestAccount;
        }
        public OperationResultGuestAccountDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }
        [DataMember]
        public GuestAccountDto GuestAccount { get; set; }
    }
}
