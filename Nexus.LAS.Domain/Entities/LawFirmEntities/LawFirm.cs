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

namespace Nexus.LAS.Domain.Entities.LawFirmEntities
{
    [Table("LawFirms")]

    public class LawFirm:BaseEntity
    {
        [Column("LawFirmIDC")]
        [StringLength(50)]
        public string LawFirmIdc { get; set; } = EntityIDCs.LawFirmIDC;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("LawFirmCode")]
        [StringLength(50)]
        public string LawFirmCode { get; set; } = null!;

        [Required]
        [Column("LawFirmEnglishName")]
        [StringLength(100)]
        public string EnglishName { get; set; } = null!;

        [Required]
        [Column("LawFirmArabicName")]
        [StringLength(100)]
        public string ArabicName { get; set; } = null!;

        [Required]
        [Column("LawFirmShortName")]
        [StringLength(50)]
        public string ShortName { get; set; } = null!;

        [Required]
        [Column("LawFirmStatus")]
        [StringLength(50)]
        public CommonStatus Status { get; set; } = CommonStatus.New;

        [Column("LawFirmLASDate")]
        public DateTime? LasDate { get; set; }

        [Column("LawFirmEstYear")]
        public int? EstYear { get; set; }

        [Column("LawFirmWebsite")]
        [StringLength(50)]
        public string? Website { get; set; }

        [Required]
        [Column("Private")]
        public bool Private { get; set; } = true;
    }
}
