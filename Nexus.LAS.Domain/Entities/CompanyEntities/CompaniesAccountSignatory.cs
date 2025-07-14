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
    [Table("CompaniesAccountSignatory")]

    public class CompaniesAccountSignatory:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesAccountSignatoryIDC")]
        public string CompaniesAccountSignatoryIdc { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesAccountSignatoryIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("CompaniesBankAccount_IDN")]
        public int CompaniesBankAccountIdn { get; set; }

        [Required]
        [Column("AccountSignatoryPerson_IDN")]
        public int AccountSignatoryPersonIdn { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("AccountSignatoryRule")]
        public string AccountSignatoryRule { get; set; }

        [Required]
        [Column("FromAmount")]
        public long FromAmount { get; set; }

        [Required]
        [Column("ToAmount")]
        public long ToAmount { get; set; }

        [Column("Description")]
        public string Description { get; set; }

        [Column("AccountSignatoryDate")]
        public DateTime? AccountSignatoryDate { get; set; }

        [Column("AccountSignatoryActive")]
        public bool? AccountSignatoryActive { get; set; }
    }
}
