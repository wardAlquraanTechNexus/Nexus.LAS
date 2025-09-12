using Nexus.LAS.Domain.Constants;
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
        [Column("PersonsIDDetailIDC", Order = 0)]
        public string PersonsIDDetailIdc { get; set; } = EntityIDCs.PersonIdDetail;

        [Key, Column("PersonsIDDetailIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }

        [Column("Persons_IDN")]
        public int? PersonsIdn { get; set; }

        [Column("IDPrimary")]
        public bool? IsPrimary { get; set; }

        [Column("IDType")]
        public int? Type { get; set; }

        [Column("IDNationality")]
        public int? Nationality { get; set; }

        [Column("IDPlaceOfIssue")]
        public int? PlaceOfIssue { get; set; }

        [Column("IDNumber")]
        public string? IDNumber { get; set; }

        [Column("IDIssueDate")]
        public DateTime? IDIssueDate { get; set; }

        [Column("IDExpiryDate")]
        public DateTime? ExpiryDate { get; set; }

        [Column("IDExpiryActiveReminder")]
        public bool? ActiveReminder { get; set; }
    }

}
