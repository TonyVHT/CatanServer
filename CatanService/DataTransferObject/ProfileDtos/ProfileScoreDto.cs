using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class ProfileScoreDto
    {
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public int Score { get; set; } = 0;

        [DataMember]
        public int Position { get; set; } = 0;
        [DataMember]
        public int GamesWon { get; set; } = 0;
    }
}
