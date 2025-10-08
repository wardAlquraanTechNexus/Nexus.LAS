using Nexus.LAS.Domain.Constants;
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
    [Table("FPCsODs")]

    public class FPCOD:BaseEntity
    {
        [Column("FPCsODIDC")]
        [MaxLength(50)]
        public string FPCOdIdc { get; set; } = EntityIDCs.FPCsODs;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FPCsODIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("FPCs_IDN")]
        public int FPCIdn { get; set; }

        [Required]
        [Column("DocType")]
        public int DocType { get; set; }

        [Column("Description")]
        [MaxLength(4000)]
        public string? Description { get; set; }
    }
}
