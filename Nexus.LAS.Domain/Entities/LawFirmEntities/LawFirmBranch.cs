using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.LawFirmEntities
{
    [Table("LawFirmsBranches")]
    public class LawFirmBranch : BaseEntity
    {
        [Column("LawFirmsBranchIDC")]
        [StringLength(50)]
        public string LawFirmsBranchIdc { get; set; } = EntityIDCs.LawFirmsBranches!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("LawFirmsBranchIDN")]
        public override int Id { get; set; }

        [Column("LawFirms_IDN")]
        public int? LawFirmId { get; set; }

        [Column("BranchName")]
        [StringLength(50)]
        public string? BranchName { get; set; }

        [Column("Country")]
        [StringLength(50)]
        public int? CountryId { get; set; }

        [Column("City")]
        public int? City { get; set; }

        [Column("Phone1")]
        [StringLength(50)]
        public string? Phone1 { get; set; }

        [Column("Phone2")]
        [StringLength(50)]
        public string? Phone2 { get; set; }

        [Column("Phone3")]
        [StringLength(50)]
        public string? Phone3 { get; set; }

        [Column("Fax")]
        [StringLength(50)]
        public string? Fax { get; set; }

        [Column("Email1")]
        [StringLength(50)]
        public string? Email1 { get; set; }

        [Column("Email2")]
        [StringLength(50)]
        public string? Email2 { get; set; }

        [Column("BranchPrimary")]
        public bool BranchPrimary { get; set; }
    }
}
