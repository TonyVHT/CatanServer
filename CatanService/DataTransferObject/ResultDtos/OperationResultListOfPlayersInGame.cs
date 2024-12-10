using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.ResultDtos
{
    [DataContract]
    public class OperationResultListOfPlayersInGame : OperationResultDto
    {
        public OperationResultListOfPlayersInGame(bool IsSuccess, string MessageResponse, List<ProfileDto> profileDtos, List<GuestAccountDto> guestAccountDtos) 
            : base(IsSuccess, MessageResponse)
        {
            this.ProfileDtos = profileDtos;
            this.GuestAccountDtos = guestAccountDtos;
        }
        public OperationResultListOfPlayersInGame(bool IsSuccess, string MessageResponse)
            : base(IsSuccess, MessageResponse)
        {
        }

        public OperationResultListOfPlayersInGame(bool IsSuccess, string MessageResponse, List<ProfileDto> profileDtos, int votesReceived)
            : base(IsSuccess, MessageResponse)
        {
            this.ProfileDtos = profileDtos;
        }

        [DataMember]
        public List<ProfileDto> ProfileDtos { get; set; } = new List<ProfileDto>();
        [DataMember]    
        public List<GuestAccountDto> GuestAccountDtos { get; set; } = new List<GuestAccountDto>();
    }
}
