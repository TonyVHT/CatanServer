using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Domain
{
    public class GuestAccount
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [MaxLength(255)]
        public string Name { get; set; }
        [Required]
        public bool IsActive { get; set; } = true;
        public DateTime? LastActivity { get; set; }

        public virtual ICollection<GuestAccountGame> RelationGuestAccountGames { get; set; } = new List<GuestAccountGame>();
    }
}
