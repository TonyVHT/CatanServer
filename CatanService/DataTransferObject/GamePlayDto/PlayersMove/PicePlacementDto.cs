using CatanService.DataTransferObject.GamePlayDto.Board;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.GamePlayDto.PlayersMove
{
    [DataContract]
    public class PiecePlacementDto
    {
        [DataMember]
        public string PieceType { get; set; } // "Road", "Settlement", "City"

        [DataMember]
        public int TargetHexId { get; set; } // Hexágono relacionado

        [DataMember]
        public int TargetVertexId { get; set; } // Para pueblos/ciudades

        [DataMember]
        public int TargetEdgeId { get; set; } // Para carreteras

        [DataMember]
        public int TargetRow { get; set; } // Coordenada de fila (opcional)

        [DataMember]
        public int TargetCol { get; set; } // Coordenada de columna (opcional)
    }

}
