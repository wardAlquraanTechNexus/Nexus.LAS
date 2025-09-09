using Nexus.LAS.Domain.Constants;
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

    public class LawFirmAffiliate:BaseEntity
    {
        [Column("LawFirmsAffiliateIDC")]
        [StringLength(50)]
        public string LawFirmsAffiliateIdc { get; set; } = EntityIDCs.LawFirmsAffiliates;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmsAffiliateIDN")]
        public override int Id { get; set; }

        [Column("LawFirms_IDN")]
        public int? LawFirmId { get; set; }

        [Column("AffiliateName")]
        [StringLength(50)]
        public string? AffiliateName { get; set; }
    }
}
