using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities
{
    [Table("FPCsODsActions")]
    public class FPCODAction:BaseEntity
    {
        [Column("FPCsODsActionIDC")]
        [MaxLength(50)]
        public string FPCsOdsActionIdc { get; set; } = EntityIDCs.FPCsODsActions;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FPCsODsActionIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("FPCsODs_IDN")]
        public int FPCOdIdn { get; set; }

        [Required]
        [Column("ActionType")]
        public int ActionType { get; set; }

        [Required]
        [Column("ActionDate")]
        public DateTime ActionDate { get; set; }

        [Column("ActionDescription")]
        [MaxLength(4000)]
        public string? ActionDescription { get; set; }
    }
}
