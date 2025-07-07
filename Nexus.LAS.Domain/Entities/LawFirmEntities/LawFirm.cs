using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.LawFirmEntities
{
    [Table("LawFirms")]

    public class LawFirm:BaseEntity
    {
        [Column("LawFirmIDC")]
        [StringLength(50)]
        public string LawFirmIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmIDN")]
        public int LawFirmIdn { get; set; }

        [Required]
        [Column("LawFirmCode")]
        [StringLength(50)]
        public string LawFirmCode { get; set; } = null!;

        [Required]
        [Column("LawFirmEnglishName")]
        [StringLength(100)]
        public string LawFirmEnglishName { get; set; } = null!;

        [Required]
        [Column("LawFirmArabicName")]
        [StringLength(100)]
        public string LawFirmArabicName { get; set; } = null!;

        [Required]
        [Column("LawFirmShortName")]
        [StringLength(50)]
        public string LawFirmShortName { get; set; } = null!;

        [Required]
        [Column("LawFirmStatus")]
        [StringLength(50)]
        public string LawFirmStatus { get; set; } = null!;

        [Column("LawFirmLASDate")]
        public DateTime? LawFirmLasDate { get; set; }

        [Column("LawFirmEstYear")]
        public int? LawFirmEstYear { get; set; }

        [Column("LawFirmWebsite")]
        [StringLength(50)]
        public string? LawFirmWebsite { get; set; }

        [Required]
        [Column("Private")]
        public bool Private { get; set; }
    }
}
