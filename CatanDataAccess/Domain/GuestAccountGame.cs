using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Domain
{
    public class GuestAccountGame
    {
        [Key, Column(Order = 0)]
        public int GuestAccountId { get; set; }

        [Key, Column(Order = 1)]
        public int GameId { get; set; }
        public bool IsPlayerInGame { get; set; } = false;
        public string IsActiveGame { get; set; }

        [ForeignKey("GuestAccountId")]
        public virtual GuestAccount RelationGuestAccount { get; set; }

        [ForeignKey("GameId")]
        public virtual Game RelationGame { get; set; }
    }
}
