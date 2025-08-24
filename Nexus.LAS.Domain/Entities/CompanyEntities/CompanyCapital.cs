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
    [Table("CompaniesCapitals")]

    public class CompanyCapital:BaseEntity
    {
        public string CompaniesCapitalIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesCapitalIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyId { get; set; }

        [Column("CompaniesCapitalDate")]
        public DateTime? CompaniesCapitalDate { get; set; }

        [Column("CompaniesCapitalAmount")]
        public double? CompaniesCapitalAmount { get; set; }

        [Column("NominalValueOfShare")]
        public double? NominalValueOfShare { get; set; }

        [MaxLength(50)]
        public string ClassOfSahres { get; set; }

        [Column("CompaniesCapitalNumberOfShares")]
        public long? NumberOfShares { get; set; } //must great or equal the total of number of shareheloder linked to it

        [Column("CompaniesCapitalAuthorized")]
        public double? CapitalAuthorized { get; set; }

        [Column("CompaniesCapitalPaid")]
        public double? CapitalPaid { get; set; }

        [Column("CompaniesCapitalIssuedShares")]
        public long? IssuedShares { get; set; }

        [MaxLength(50)]
        [Column("CompaniesCapitalCurrency")]
        public string CompaniesCapitalCurrency { get; set; }

        [Required]
        [Column("CompaniesCapitalActive")]
        public bool CompaniesCapitalActive { get; set; }
    }
}
