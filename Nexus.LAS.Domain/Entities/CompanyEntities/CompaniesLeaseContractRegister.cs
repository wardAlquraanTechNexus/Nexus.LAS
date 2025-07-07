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
    [Table("CompaniesLeaseContractRegisters")]

    public class CompaniesLeaseContractRegister:BaseEntity
    {
        [Column("CompaniesLeaseContracts_IDN")]
        [Key]
        public int CompaniesLeaseContractsIdn { get; set; }

        [MaxLength(50)]
        [Column("LeaseRegisters_IDC")]
        public string LeaseRegistersIdc { get; set; }

        [Required]
        [Column("LeaseRegisters_IDN")]
        public int LeaseRegistersIdn { get; set; }
    }
}
