using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject.GamePlayDto.Resources
{
    [DataContract]
    public class ResourceDto
    {
        [DataMember]
        public string ResourceName { get; set; }

        [DataMember]
        public int Quantity { get; set; } = 0;
    }
}