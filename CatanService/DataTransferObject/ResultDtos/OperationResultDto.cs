using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultDto
    {
        public OperationResultDto(bool IsSuccess, string MessageResponse) 
        {
            this.IsSuccess = IsSuccess;
            this.MessageResponse = MessageResponse;
        }
        [DataMember]
        public bool IsSuccess { get; set; }
        [DataMember]
        public string MessageResponse { get; set; }
    }
}
