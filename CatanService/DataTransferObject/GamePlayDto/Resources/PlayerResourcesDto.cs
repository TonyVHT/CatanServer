using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.GamePlayDto.Resources
{
    [DataContract]
    public class PlayerResourcesDto
    {
        [DataMember]
        public int PlayerId { get; set; } // ID del jugador que recibe los recursos.

        [DataMember]
        public ResourceDto LunarStone { get; set; }

        [DataMember]
        public ResourceDto Tritonium { get; set; }

        [DataMember]
        public ResourceDto AlphaNanofibers { get; set; }

        [DataMember]
        public ResourceDto EpsilonBiomass { get; set; }

        [DataMember]
        public ResourceDto Grx810 { get; set; }
    }

}
