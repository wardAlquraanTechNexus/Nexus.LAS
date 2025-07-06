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
    [Table("CompaniesBoardMembers")]

    public class CompaniesBoardMember:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesBoardMemberIDC")]
        public string CompaniesBoardMemberIdc { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesBoardMemberIDN")]
        public int CompaniesBoardMemberIdn { get; set; }

        [Column("CompaniesBoards_IDN")]
        public int? CompaniesBoardsIdn { get; set; }

        [Required]
        [Column("Person_IDN")]
        public int PersonIdn { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("BoardMemberPosition")]
        public string BoardMemberPosition { get; set; }

        [Column("BoardMemberActive")]
        public bool? BoardMemberActive { get; set; }
    }
}
