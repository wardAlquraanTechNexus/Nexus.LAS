using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesPhones")]

    public class CompanyPhone:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesPhoneIDC")]
        public string CompaniesPhoneIdc { get; set; } = EntityIDCs.CompaniesPhoneIDC;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesPhoneIDN")]
        public override int Id { get; set; }

        [Column("Companies_IDN")]
        public int? CompanyId { get; set; }

        [Column("PhonePrimary")]
        public bool? PhonePrimary { get; set; }

        [MaxLength(50)]
        [Column("PhoneType")]
        public string PhoneType { get; set; }
        [MaxLength(50)]
        [Column("PhoneNumber")]
        public string PhoneNumber { get; set; }
    }
}
