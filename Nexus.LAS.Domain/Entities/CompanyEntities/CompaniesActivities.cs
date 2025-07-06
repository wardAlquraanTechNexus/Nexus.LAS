using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesActivities")]

    public class CompaniesActivities:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesActivityIDC")]
        public string CompaniesActivityIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesActivityIDN")]
        public int CompaniesActivityIdn { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [Column("Activity")]
        public string Activity { get; set; }

        [Required]
        [Column("CreatedBy_IDN")]
        public int CreatedByIdn { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("CreatedBy_Name")]
        public string CreatedByName { get; set; }

        [Required]
        [Column("CreatedBy_Date")]
        public DateTime CreatedByDate { get; set; }

        [Column("UpdatedBy_IDN")]
        public int? UpdatedByIdn { get; set; }

        [MaxLength(50)]
        [Column("UpdatedBy_Name")]
        public string UpdatedByName { get; set; }

        [Column("UpdatedBy_Date")]
        public DateTime? UpdatedByDate { get; set; }
    }
}
