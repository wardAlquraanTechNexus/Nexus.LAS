using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.PersonEntities
{
    [Table("PersonsIDDetails")]
    public class PersonsIDDetail : BaseEntity
    {
        [Key, Column("PersonsIDDetailIDC", Order = 0)]
        public string PersonsIDDetailIdc { get; set; } = null!;

        [Key, Column("PersonsIDDetailIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }

        [Column("Persons_IDN")]
        public int? PersonsIdn { get; set; }

        [Column("IDPrimary")]
        public bool? IDPrimary { get; set; }

        [Column("IDType")]
        public string? IDType { get; set; }

        [Column("IDNationality")]
        public string? IDNationality { get; set; }

        [Column("IDPlaceOfIssue")]
        public string? IDPlaceOfIssue { get; set; }

        [Column("IDNumber")]
        public string? IDNumber { get; set; }

        [Column("IDIssueDate")]
        public DateTime? IDIssueDate { get; set; }

        [Column("IDExpiryDate")]
        public DateTime? IDExpiryDate { get; set; }

        [Column("IDExpiryActiveReminder")]
        public bool? IDExpiryActiveReminder { get; set; }
    }

}
