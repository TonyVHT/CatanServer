using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.PlayerDtos
{
    [DataContract]
    public class ExpelPlayerDto
    {
        [DataMember]
        public int IdPlayerToExpel { get; set; }
        [DataMember]
        public string Reason { get; set; } = string.Empty;
    }
}
