using System.Collections.Generic;
using System.Runtime.Serialization;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class OperationResultProfileListDto : OperationResultDto
    {
        public OperationResultProfileListDto(bool IsSuccess, string MessageResponse, List<ProfileDto> profiles) : base(IsSuccess, MessageResponse)
        {
            this.ProfileDtos = profiles;
        }
        public OperationResultProfileListDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }

        [DataMember]
        public List<ProfileDto> ProfileDtos { get; set; }
    }
}
