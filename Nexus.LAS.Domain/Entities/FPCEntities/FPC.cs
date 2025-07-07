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
    [Table("FPCs")]
    public class FPC:BaseEntity
    {
        [Column("FPCIDC")]
        [MaxLength(50)]
        public string FpcIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FPCIDN")]
        public int FpcIdn { get; set; }

        [Required]
        [Column("FPCCode")]
        [MaxLength(50)]
        public string FpcCode { get; set; } = null!;

        [Required]
        [Column("Registers_IDC")]
        [MaxLength(50)]
        public string RegistersIdc { get; set; } = null!;

        [Required]
        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Required]
        [Column("FPCStatus")]
        [MaxLength(50)]
        public string FpcStatus { get; set; } = null!;

        [Required]
        [Column("Private")]
        public bool Private { get; set; }

    }
}
