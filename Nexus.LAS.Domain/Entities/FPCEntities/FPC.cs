using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
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
    [Table("FPCs")]
    public class FPC:BaseEntity
    {
        [Column("FPCIDC")]
        [MaxLength(50)]
        public string FpcIdc { get; set; } = EntityIDCs.FPCs;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FPCIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("FPCCode")]
        [MaxLength(50)]
        public string FpcCode { get; set; } = null!;

        [Required]
        [Column("Registers_IDC")]
        [MaxLength(50)]
        public string RegisterIdc { get; set; } = null!;

        [Required]
        [Column("Registers_IDN")]
        public int RegisterIdn { get; set; }

        [Required]
        [Column("FPCStatus")]
        [MaxLength(50)]
        public CommonStatus FpcStatus { get; set; }

        [Required]
        [Column("Private")]
        public bool Private { get; set; }

    }
}
