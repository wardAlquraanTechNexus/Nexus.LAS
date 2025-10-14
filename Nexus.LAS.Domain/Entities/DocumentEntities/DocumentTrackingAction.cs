using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.DocumentEntities
{
    [Table("DocumentTrackingsActions")]

    public class DocumentTrackingAction:BaseEntity
    {
        [Column("DocumentTrackingsActionIDC")]
        [MaxLength(50)]
        public string DocumentTrackingsActionIdc { get; set; } = EntityIDCs.DocumentTrackingsActions;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("DocumentTrackingsActionIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("DocumentTrackings_IDN")]
        public int DocumentTrackingId { get; set; }

        [Required]
        [Column("ActionType")]
        [MaxLength(50)]
        public string ActionType { get; set; } = null!;

        [Required]
        [Column("ActionDate")]
        public DateTime ActionDate { get; set; }

        [Column("ActionDescription")]
        [MaxLength(4000)]
        public string? ActionDescription { get; set; }
    }
}
