using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.GamePlayDto.Board
{
    [DataContract]
    public class HexTileDto
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Resource { get; set; }
        [DataMember]
        public int DiceValue { get; set; }
        [DataMember]
        public List<VertexDto> Vertices { get; set; } = new List<VertexDto>(6);
        [DataMember]
        public List<EdgeDto> Edges { get; set; } = new List<EdgeDto>(6);
        [DataMember]
        public int Row { get; set; }  
        [DataMember]
        public int Column { get; set; }
    }
}
