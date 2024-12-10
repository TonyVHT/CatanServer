using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject 
{ 
    [DataContract]
    public class OperationResultListScoreGame : OperationResultDto
    {
        public OperationResultListScoreGame(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }
        public OperationResultListScoreGame(bool IsSuccess, string MessageResponse, List<ProfileScoreDto> listProfileScoreDto) : base(IsSuccess, MessageResponse)
        {
            this.ListProfileScoreDto = listProfileScoreDto;
        }
        [DataMember]
        public List<ProfileScoreDto> ListProfileScoreDto { get; set; } = new List<ProfileScoreDto>();
        [DataMember]
        public ProfileScoreDto ProfileScoreDto { get; set; }
    }
}
