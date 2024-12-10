using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultPictureDto : OperationResultDto
    {
        public OperationResultPictureDto(bool IsSuccess, string MessageResponse, byte[] picture) : base(IsSuccess, MessageResponse)
        {
            this.Picture = picture;
        }
        public OperationResultPictureDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {

        }
        [DataMember]
        public byte[] Picture { get; set; }
    }
}
