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
    [Table("LawFirmsExpertises")]
    public class LawFirmExpertise : BaseEntity
    {
        [Column("LawFirmsExpertiseIDC")]
        [StringLength(50)]
        public string LawFirmsExpertiseIdc { get; set; } = EntityIDCs.LawFirmsExpertises;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmsExpertiseIDN")]
        public override int Id { get; set; }

        [Column("LawFirms_IDN")]
        public int LawFirmId { get; set; }

        [Column("ExpertiseName")]
        [StringLength(50)]
        public string ExpertiseName { get; set; } = null!;
    }
}
