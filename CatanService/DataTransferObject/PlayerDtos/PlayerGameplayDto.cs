using CatanService.DataTransferObject.GamePlayDto.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.PlayerDtos
{
    [DataContract]
    public class PlayerGameplayDto
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string CurrentSession { get; set; }
        [DataMember]
        public bool isRegistered { get; set; } = false;
        [DataMember]
        public int Points { get; set; } = 0;
    }
}
