using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesChamberOfCommerces")]

    public class CompanyChamberOfCommerce:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesChamberOfCommerceIDC")]
        public string CompanyChamberOfCommerceIdc { get; set; } = EntityIDCs.CompaniesChamberOfCommerces;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesChamberOfCommerceIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyIdn { get; set; }

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
        public bool CciExpiryActiveReminder { get; set; }

        [MaxLength(50)]
        [Column("CCIUsername")]
        public string CciUsername { get; set; }

        [MaxLength(50)]
        [Column("CCIPassword")]
        public string CciPassword { get; set; }

    }
}
