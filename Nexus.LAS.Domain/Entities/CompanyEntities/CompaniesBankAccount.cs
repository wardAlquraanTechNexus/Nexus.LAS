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
    [Table("CompaniesBankAccount")]

    public class CompaniesBankAccount:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesBankAccountIDC")]
        public string CompaniesBankAccountIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesBankAccountIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [MaxLength(100)]
        [Column("BankName")]
        public string BankName { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("AccountNumber")]
        public string AccountNumber { get; set; }

        [Column("Note")]
        public string Note { get; set; }

        [Required]
        [Column("BankAccountDate")]
        public DateTime BankAccountDate { get; set; }

        [Required]
        [Column("BankAccountActive")]
        public bool BankAccountActive { get; set; }
    }
}
