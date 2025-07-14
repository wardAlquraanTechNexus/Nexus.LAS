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
    [Table("CompaniesOtherContracts")]

    public class CompaniesOtherContract:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesOtherContractIDC")]
        public string CompaniesOtherContractIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesOtherContractIDN")]
        [Key]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Column("ContractDate")]
        public DateTime? ContractDate { get; set; }

        [MaxLength(4000)]
        [Column("ContractDescription")]
        public string ContractDescription { get; set; }
    }
}
