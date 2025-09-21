using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.PropertyEntities
{
    [Table("PropertyDocuments")]
    public class PropertyDocument : BaseEntity
    {
        [Column(Order = 0)]
        public string PropertyDocumentsIdc { get; set; } = EntityIDCs.PropertyDocuments;

        [Key]
        [Column("PropertyDocumentsIdn" , Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }


        [Column("Property_IDN")]
        public int? PropertyId { get; set; }
        [Column("DocumentType")]

        public int? Type { get; set; }
        [Column("DocumentPlaceOfIssue")]
        public string? PlaceOfIssue { get; set; }
        [Column("DocumentIssueDate")]
        public DateTime? IssueDate { get; set; }
        [Column("DocumentExpiryDate")]

        public DateTime? DocumentExpiryDate { get; set; }
        [Column("DocumentExpiryActiveReminder")]
        public bool? ActiveReminder { get; set; }

        public string? Description { get; set; }
    }
}
