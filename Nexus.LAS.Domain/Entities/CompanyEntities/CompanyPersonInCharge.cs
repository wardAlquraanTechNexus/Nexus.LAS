using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesPersonInCharges")]
    //Person Contact
    public class CompanyPersonInCharge:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesPersonInChargeIDC")]
        public string CompanyPersonInChargeIdc { get; set; } = EntityIDCs.CompanyPersonInChargeIDC;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesPersonInChargeIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyIdn { get; set; }

        [Required]
        [Column("Persons_IDN")]
        public int PersonIdn { get; set; }

        [MaxLength(50)]
        [Column("Designation")]
        public int? Designation { get; set; }

        [Column("AuthorityRule")]
        public int? AuthorityRule { get; set; }

        [MaxLength(4000)]
        [Column("Notes")]
        public string? Notes { get; set; }

        [Column("PersonInChargeDate")]
        public DateTime? PersonInChargeDate { get; set; }
        [Column("CessationDate")]
        public DateTime? CessationDate { get; set; }

        [Column("PersonInChargeActive")]
        public bool? PersonInChargeActive { get; set; }
        [ForeignKey(nameof(PersonIdn))]
        public Person Person { get; set; }
        [ForeignKey(nameof(CompanyIdn))]
        public Company Company { get; set; }
    }
}
