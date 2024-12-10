using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.GamePlayDto.Board
{
    [DataContract]
    public class VertexDto
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public bool IsOccupied { get; set; }
        [DataMember]
        public int? OwnerPlayerId { get; set; }
        [DataMember]
        public bool IsCity { get; set; } // Indica si el vértice tiene una ciudad
        [DataMember]
        public List<int> ConnectedEdges { get; set; } = new List<int>(); // IDs de las aristas conectadas
        [DataMember]
        public List<int> ConnectedHexes { get; set; } = new List<int>(); // IDs de los hexágonos conectados
    }

}