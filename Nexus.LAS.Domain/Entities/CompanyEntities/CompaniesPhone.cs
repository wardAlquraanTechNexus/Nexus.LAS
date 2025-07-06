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
    [Table("CompaniesPhones")]

    public class CompaniesPhone:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesPhoneIDC")]
        public string CompaniesPhoneIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesPhoneIDN")]
        public int CompaniesPhoneIdn { get; set; }

        [Column("Companies_IDN")]
        public int? CompaniesIdn { get; set; }

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
