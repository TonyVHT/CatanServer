using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultAccountDto : OperationResultDto
    {
        public OperationResultAccountDto(bool IsSuccess, string MessageResponse, AccountDto accountDto) : base(IsSuccess, MessageResponse)
        {
            this.AccountDto = accountDto;
        }
        public OperationResultAccountDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }

        [DataMember]
        AccountDto AccountDto { get; set; }
    }
}
