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
    [Table("CompaniesAuthorizedSignatories")]

    public class CompanyAuthorizedSignatory:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesAuthorizedSignatoryIDC")]
        public string CompaniesAuthorizedSignatoryIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesAuthorizedSignatoryIDN")]
        [Key]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Column("Persons_IDN")]
        public int? PersonsIdn { get; set; }

        [MaxLength(50)]
        [Column("POAType")]
        public string PoaType { get; set; }

        [MaxLength(50)]
        [Column("POATypeDetails")]
        public string PoaTypeDetails { get; set; }
    }
}
