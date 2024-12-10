using CatanService.EndPoint.GameEndPoints.GameModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.PlayerDtos
{
    [DataContract]
    public class PlayerTurnStatusDto
    {
        [DataMember]
        public ProfileDto ProfileTurnDto { get; set; } // Información del jugador registrado (opcional)

        [DataMember]
        public GuestAccountDto GuestAccountTurnDto { get; set; } // Información del jugador invitado (opcional)

        [DataMember]
        public bool IsTurn { get; set; } // Indica si es el turno de este jugador
        [DataMember]
        public int Points { get; set; } = 0; // Puntos del jugador
    }
}
