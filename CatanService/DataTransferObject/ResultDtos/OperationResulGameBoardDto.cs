using CatanService.DataTransferObject.GamePlayDto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.ResultDtos
{
    [DataContract]
    public class OperationResulGameBoardDto : OperationResultDto
    {
        public OperationResulGameBoardDto(bool IsSuccess, string MessageResponse, GameBoardStateDto gameBoardStateDto) : base(IsSuccess, MessageResponse)
        {
            this.GameBoardState = gameBoardStateDto;
        }
        public OperationResulGameBoardDto(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }
        [DataMember]
        public GameBoardStateDto GameBoardState { get; set; }
    }
}
