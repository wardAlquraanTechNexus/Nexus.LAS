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
    [Table("LawFirmsAffiliates")]

    public class LawFirmsAffiliate:BaseEntity
    {
        [Column("LawFirmsAffiliateIDC")]
        [StringLength(50)]
        public string LawFirmsAffiliateIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmsAffiliateIDN")]
        public int LawFirmsAffiliateIdn { get; set; }

        [Column("LawFirms_IDN")]
        public int? LawFirmsIdn { get; set; }

        [Column("AffiliateName")]
        [StringLength(50)]
        public string? AffiliateName { get; set; }
    }
}
