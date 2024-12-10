using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace CatanDataAccess.Domain
{
    public class Account
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [EmailAddress]
        [MaxLength(320)]
        public string Email { get; set; }
        [Phone]
        [MaxLength(20)]
        public string PhoneNumber { get; set; }
        [Required]
        public byte[] PasswordHash { get; set; }
        [Required]
        public byte[] Salt { get; set; }
        [Required]
        public DateTime CreatedAt { get; set; }
        [Required]
        public string PreferredLanguage {get; set; }
        [Required]
        public DateTime UpdatedAt { get; set; }
        [Required]
        public bool Status { get; set; } = false ;
        public string Token { get; set; }
        public DateTime? RecoveryTokenExpiry { get; set; }

        public virtual Profile RelationProfile { get; set; }
    }
}
