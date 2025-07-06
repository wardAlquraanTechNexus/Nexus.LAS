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
    [Table("CompaniesShareHoldersGroups")]

    public class CompaniesShareHoldersGroup:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesShareHoldersGroupIDC")]
        public string CompaniesShareHoldersGroupIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesShareHoldersGroupIDN")]
        public int CompaniesShareHoldersGroupIdn { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [Column("ShareHolderGroupDate")]
        public DateTime ShareHolderGroupDate { get; set; }

        [Required]
        [Column("ShareHolderGroupActive")]
        public bool ShareHolderGroupActive { get; set; }
    }
}
