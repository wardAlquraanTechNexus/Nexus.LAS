using Nexus.LAS.Domain.Constants;
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

    public class CompanyAccountSignatory:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesAccountSignatoryIDC")]
        public string CompaniesAccountSignatoryIdc { get; set; } = EntityIDCs.CompaniesAccountSignatory;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesAccountSignatoryIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("CompaniesBankAccount_IDN")]
        public int CompanyBankAccountId { get; set; }

        [Required]
        [Column("AccountSignatoryPerson_IDN")]
        public int PersonId { get; set; }

        [Required]
        [Column("AccountSignatoryRule")]
        public int Rule { get; set; }

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
        public DateTime? CessationDate { get; set; }

        [Column("AccountSignatoryActive")]
        public bool? AccountSignatoryActive { get; set; }
    }
}
