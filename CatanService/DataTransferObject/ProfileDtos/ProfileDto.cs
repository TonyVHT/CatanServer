using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.DataTransferObject
{
    [DataContract]
    public class ProfileDto
    {
        [DataMember]
        public int? Id { get; set; } = 0;

        [DataMember(IsRequired = true)]
        [Required]
        [StringLength(255)]
        public string Name { get; set; }
        [DataMember(IsRequired = true)]
        public string PreferredLanguage { get; set; }
        [DataMember]
        public bool IsRegistered { get; set; } = true;
        [DataMember]
        public byte[] ProfilePicture { get; set; }
        [DataMember(IsRequired = true)]
        public string CurrentSessionID { get; set; }
        [DataMember]
        public int PictureVersion { get; set; } = 0;
        [DataMember]
        public bool IsOnline { get; set; } = false;
        [DataMember]
        public bool isReadyToPlay { get; set; } = false;
        [DataMember]
        public int votesReceived { get; set; } = 0;
    }
}
