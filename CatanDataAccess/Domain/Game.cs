using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Domain
{
    public class Game
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        [MaxLength(30)]
        [Index(IsUnique = true)]
        public string AccessKey { get; set; }
        [Required]
        public DateTime Date { get; set; }
        [Required]
        [MaxLength(50)]
        public string Status { get; set; }
        [Required]
        public int NumberPlayers { get; set; } = 1;
        [Required]
        public int MaxNumberPlayers { get; set; }
        [Required]
        public string Name { get; set; }
        public int AdminGameId { get; set; }

        public virtual ICollection<GuestAccountGame> RelationGuestAccountGames { get; set; } = new List<GuestAccountGame>();
        public virtual ICollection<ProfileGame> RelationProfileGames { get; set; } = new List<ProfileGame>();
    }
}
