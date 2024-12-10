using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Domain
{
    public class ProfileGame
    {
        [Key, Column(Order = 0)]
        public int ProfileId { get; set; }

        [Key, Column(Order = 1)]
        public int GameId { get; set; }

        public string IsActiveGame { get; set; }

        public bool IsPlayerInGame { get; set; } = false;
        public int Points { get; set; } = 0;

        [ForeignKey("ProfileId")]
        public virtual Profile RelationProfile { get; set; }

        [ForeignKey("GameId")]
        public virtual Game RelationGame { get; set; } 
    }
}
