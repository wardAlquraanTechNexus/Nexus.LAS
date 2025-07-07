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
    [Table("CompaniesChamberOfCommerces")]

    public class CompaniesChamberOfCommerce:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesChamberOfCommerceIDC")]
        public string CompaniesChamberOfCommerceIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesChamberOfCommerceIDN")]
        public int CompaniesChamberOfCommerceIdn { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("CCINumber")]
        public string CciNumber { get; set; }

        [Required]
        [Column("CCIIssueDate")]
        public DateTime CciIssueDate { get; set; }

        [Column("CCIExpiryDate")]
        public DateTime? CciExpiryDate { get; set; }

        [Column("CCIExpiryActiveReminder")]
        public bool? CciExpiryActiveReminder { get; set; }

        [MaxLength(50)]
        [Column("CCIUsername")]
        public string CciUsername { get; set; }

        [MaxLength(50)]
        [Column("CCIPassword")]
        public string CciPassword { get; set; }

    }
}
