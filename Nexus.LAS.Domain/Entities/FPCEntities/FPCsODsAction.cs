using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities
{
    [Table("FPCsODsActions")]
    public class FPCODAction:BaseEntity
    {
        [Column("FPCsODsActionIDC")]
        [MaxLength(50)]
        public string FPCsOdsActionIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FPCsODsActionIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("FPCsODs_IDN")]
        public int FPCOdIdn { get; set; }

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
