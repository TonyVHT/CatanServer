using CatanService.DataTransferObject.PlayerDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.ResultDtos
{
    [DataContract]
    public class OperationResultListOfPlayersTurn : OperationResultDto
    {
        public OperationResultListOfPlayersTurn(bool IsSuccess, string MessageResponse, PlayerTurnStatusDto actualPlayerGameplay) : base(IsSuccess, MessageResponse)
        {
            playerTurnStatusDtos.Add(actualPlayerGameplay);
        }
        public OperationResultListOfPlayersTurn(bool IsSuccess, string MessageResponse) : base(IsSuccess, MessageResponse)
        {
        }
        [DataMember]
        List<PlayerTurnStatusDto> playerTurnStatusDtos = new List<PlayerTurnStatusDto>();
    }
}
