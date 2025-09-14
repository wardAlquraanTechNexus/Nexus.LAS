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
        public string PropertyDocumentsIdc { get; set; } = null!;

        [Key]
        [Column("PropertyDocumentsIdn" , Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }


        [Column("Property_IDN")]
        public int? PropertyId { get; set; }

        public string? DocumentType { get; set; }

        public string? DocumentPlaceOfIssue { get; set; }

        public DateTime? DocumentIssueDate { get; set; }

        public DateTime? DocumentExpiryDate { get; set; }

        public bool? DocumentExpiryActiveReminder { get; set; }

        public string? Description { get; set; }
    }
}
