using DataTransferObject.Enums;
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
    public class OperationResultChangeRegisterEmailOrPhone : OperationResultDto
    {
        public OperationResultChangeRegisterEmailOrPhone(bool IsSuccess, string MessageResponse, EnumChangeAccountRegister status) : base(IsSuccess, MessageResponse)
        {
            this.StatusChangeAccountRegister = status;
        }

        [DataMember]
        EnumChangeAccountRegister StatusChangeAccountRegister { get; set; }
    }
}
