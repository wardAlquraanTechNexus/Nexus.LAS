using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesLeaseContracts")]

    public class CompaniesLeaseContract
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesLeaseContractIDC")]
        public string CompaniesLeaseContractIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesLeaseContractIDN")]
        public int CompaniesLeaseContractIdn { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Column("CommencementDate")]
        public DateTime? CommencementDate { get; set; }

        [Column("LeaseContractExpiryDate")]
        public DateTime? LeaseContractExpiryDate { get; set; }

        [Column("LeaseContractExpiryActiveReminder")]
        public bool? LeaseContractExpiryActiveReminder { get; set; }
    }
}
