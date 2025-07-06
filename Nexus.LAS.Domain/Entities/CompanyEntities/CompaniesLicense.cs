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
    [Table("CompaniesLicenses")]

    public class CompaniesLicense:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesLicenseIDC")]
        public string CompaniesLicenseIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesLicenseIDN")]
        public int CompaniesLicenseIdn { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [Column("LicensePrimary")]
        public bool LicensePrimary { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("LicenseStatus")]
        public string LicenseStatus { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("LicenseClassification")]
        public string LicenseClassification { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("LicenseNumber")]
        public string LicenseNumber { get; set; }

        [Required]
        [Column("LicenseIssueDate")]
        public DateTime LicenseIssueDate { get; set; }

        [Column("LicenseExpiryDate")]
        public DateTime? LicenseExpiryDate { get; set; }

        [Column("LicenseExpiryActiveReminder")]
        public bool? LicenseExpiryActiveReminder { get; set; }
    }
}
