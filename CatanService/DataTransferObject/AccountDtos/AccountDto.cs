using CatanDataAccess.Migrations;
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
    public class AccountDto
    {
        [DataMember(IsRequired =false)]
        public int? Id { get; set; }
        [DataMember]
        [EmailAddress]
        [MaxLength(320)]
        public string Email { get; set; }
        [DataMember]
        [Phone]
        [MaxLength(20)]
        public string PhoneNumber { get; set; }
        [DataMember]
        public string Password { get; set; } 
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string PreferredLanguage { get; set; }
        [DataMember]
        public string Token { get; set; }
        [DataMember]
        public DateTime TokenExpiration { get; set; }
        [DataMember]
        public string CurrentSessionId { get; set; }
    }
}
