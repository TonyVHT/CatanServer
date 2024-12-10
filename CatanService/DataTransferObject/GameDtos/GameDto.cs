using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class GameDto
    {
        [DataMember]
        public int? Id { get; set; }
        [DataMember]
        public string AccessKey { get; set; }
        [DataMember]
        public int? MaxNumberPlayers { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]  
        public int IdAdminGame { get; set; }
    }
}
