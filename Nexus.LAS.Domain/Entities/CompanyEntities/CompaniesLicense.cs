using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesLicenses")]

    public class CompanyLicense:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesLicenseIDC")]
        public string CompanyLicenseIdc { get; set; } = EntityIDCs.CompaniesLicenseIDC;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesLicenseIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyIdn { get; set; }

        [Required]
        [Column("LicensePrimary")]
        public bool LicensePrimary { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("LicenseStatus")]
        public int LicenseStatus { get; set; }

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
        public bool LicenseExpiryActiveReminder { get; set; }
    }
}
