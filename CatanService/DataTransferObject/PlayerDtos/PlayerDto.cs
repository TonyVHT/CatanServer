using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.PlayerDtos
{
    [DataContract]
    public class PlayerDto
    {
        [DataMember]
        public ProfileDto profileDto { get; set; }
        [DataMember]
        public GuestAccountDto guestAccountDto { get; set; }
    }
}
