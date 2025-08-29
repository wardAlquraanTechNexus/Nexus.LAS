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
    [Table("CompaniesContracts")]

    public class CompanyContract:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesContractIDC")]
        public string CompaniesContractIdc { get; set; } = EntityIDCs.CompaniesContracts;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesContractIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyId { get; set; }

        [Column("ContractType")]
        public int ContractType { get; set; }

        [Column("DocumentDate")]
        public DateTime? DocumentDate { get; set; }

        [Column("CommencementDate")]
        public DateTime? CommencementDate { get; set; }

        [Column("ContractExpiryDate")]
        public DateTime? ContractExpiryDate { get; set; }

        [Column("ContractExpiryActiveReminder")]
        public bool? ContractExpiryActiveReminder { get; set; }

        [Column("ContractDescription")]
        public string ContractDescription { get; set; }

        [Column("ContractStatus")]
        public int ContractStatus { get; set; }
    }
}
