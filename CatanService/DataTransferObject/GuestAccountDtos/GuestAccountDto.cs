using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class GuestAccountDto
    {
        [DataMember]
        public int? Id { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string PreferredLanguage { get; set; }
        [DataMember]
        public bool isReadyToPlay { get; set; } = false;
        [DataMember]
        public int votesReceived { get; set; } = 0;
        [DataMember]
        public int Points { get; set; } = 0;
    }
}
