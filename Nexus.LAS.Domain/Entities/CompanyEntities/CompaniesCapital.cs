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

    public class CompaniesCapital:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesCapitalIDC")]
        public string CompaniesCapitalIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesCapitalIDN")]
        public int CompaniesCapitalIdn { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Column("CompaniesCapitalDate")]
        public DateTime? CompaniesCapitalDate { get; set; }

        [Column("CompaniesCapitalAmount")]
        public double? CompaniesCapitalAmount { get; set; }

        [Column("CompaniesCapitalNumberOfShares")]
        public long? CompaniesCapitalNumberOfShares { get; set; }

        [Column("CompaniesCapitalAuthorized")]
        public double? CompaniesCapitalAuthorized { get; set; }

        [Column("CompaniesCapitalPaid")]
        public double? CompaniesCapitalPaid { get; set; }

        [Column("CompaniesCapitalIssuedShares")]
        public long? CompaniesCapitalIssuedShares { get; set; }

        [MaxLength(50)]
        [Column("CompaniesCapitalCurrency")]
        public string CompaniesCapitalCurrency { get; set; }

        [Required]
        [Column("CompaniesCapitalActive")]
        public bool CompaniesCapitalActive { get; set; }
    }
}
