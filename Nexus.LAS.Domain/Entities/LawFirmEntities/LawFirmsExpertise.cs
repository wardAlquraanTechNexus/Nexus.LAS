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
    public class LawFirmsExpertise : BaseEntity
    {
        [Column("LawFirmsExpertiseIDC")]
        [StringLength(50)]
        public string LawFirmsExpertiseIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmsExpertiseIDN")]
        public int LawFirmsExpertiseIdn { get; set; }

        [Column("LawFirms_IDN")]
        public int LawFirmsIdn { get; set; }

        [Column("ExpertiseName")]
        [StringLength(50)]
        public string ExpertiseName { get; set; } = null!;
    }
}
