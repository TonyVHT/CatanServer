using CatanService.DataTransferObject.GamePlayDto.Board;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.GamePlayDto
{
    [DataContract]
    public class GameBoardStateDto
    {
        [DataMember]
        public int GameId { get; set; }
        [DataMember]
        public List<HexTileDto> HexTiles { get; set; }
        public bool IsInitialPhase { get; set; } = true; // Inicializado al inicio del juego

    }

}
