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
    [Table("CompaniesBoards")]

    public class CompanyBoard:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesBoardIDC")]
        public string CompaniesBoardIdc { get; set; } = EntityIDCs.CompaniesBoardIDC;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesBoardIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyId { get; set; }

        [Required]
        [Column("BoardDate")]
        public DateTime BoardDate { get; set; }

        [Required]
        [Column("BoardActive")]
        public bool BoardActive { get; set; }
    }
}
