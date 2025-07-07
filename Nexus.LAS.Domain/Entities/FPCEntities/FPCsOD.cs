using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.FPC
{
    [Table("FPCsODs")]

    public class FPCsOD:BaseEntity
    {
        [Column("FPCsODIDC")]
        [MaxLength(50)]
        public string FPCsOdIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FPCsODIDN")]
        public int FPCsOdIdn { get; set; }

        [Required]
        [Column("FPCs_IDN")]
        public int FPCsIdn { get; set; }

        [Required]
        [Column("DocType")]
        [MaxLength(50)]
        public string DocType { get; set; } = null!;

        [Column("Description")]
        [MaxLength(4000)]
        public string? Description { get; set; }
    }
}
