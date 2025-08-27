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
    [Table("CompaniesEmails")]

    public class CompanyEmail:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesEmailIDC")]
        public string CompaniesEmailIdc { get; set; } = EntityIDCs.Company;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesEmailIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyId { get; set; }

        [Required]
        [Column("EmailPrimary")]
        public bool EmailPrimary { get; set; }

        [Required]
        [MaxLength(150)]
        [Column("Email")]
        public string Email { get; set; }
    }
}
