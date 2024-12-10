using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Domain
{
    public class Profile
    {
        [Key]
        [ForeignKey("RelationAccount")] 
        public int Id { get; set; }  
        [Required]
        [MaxLength(100)]
        public string Name { get; set; }
        public string SessionId { get; set; }
        public DateTime? LastActivity { get; set; }
        [MaxLength(255)]
        public string PicturePath { get; set; }
        public int PictureVersion { get; set; } = 0;
        public bool IsOnline { get; set; } = false;
        public virtual Account RelationAccount { get; set; } 
        public virtual ICollection<FriendRequest> RelationSentFriendRequests { get; set; } = new List<FriendRequest>();
        public virtual ICollection<FriendRequest> RelationReceivedFriendRequests { get; set; } = new List<FriendRequest>();
        public virtual ICollection<ProfileGame> RelationProfileGames { get; set; } = new List<ProfileGame>();
    }

}
