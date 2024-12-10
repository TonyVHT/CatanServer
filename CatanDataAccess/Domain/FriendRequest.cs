using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Domain
{
    public class FriendRequest
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        public DateTime Date { get; set; } = DateTime.Now;
        [Required]
        public int SenderProfileId { get; set; }
        [Required]
        public int ReceiverProfileId { get; set; }
        [Required]
        public string Status { get; set; }

        [ForeignKey("SenderProfileId")]
        public Profile RelationSenderProfile { get; set; }
        [ForeignKey("ReceiverProfileId")]
        public Profile RelationReceiverProfile { get; set; }
    }

}
