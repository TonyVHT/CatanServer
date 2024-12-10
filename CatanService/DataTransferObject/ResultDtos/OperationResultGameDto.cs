using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultGameDto : OperationResultDto
    {
        public OperationResultGameDto(bool IsSuccess, string MessageResponse, GameDto GameDto) : base (IsSuccess, MessageResponse)
        {
            this.GameDto = GameDto;
        }
        public OperationResultGameDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }
        [DataMember]
        public GameDto GameDto { get; set; }
    }
}
