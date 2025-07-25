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
    [Table("PersonsOtherDocuments")]
    public class PersonsOtherDocument : BaseEntity
    {
        [Column("PersonsOtherDocumentIDC", Order = 0)]
        public string? PersonsOtherDocumentIdc { get; set; } = null!;

        [Key, Column("PersonsOtherDocumentIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public override int Id { get; set; }

        [Column("Persons_IDN")]
        public int PersonsIdn { get; set; }

        [Column("DocumentType")]
        public string DocumentType { get; set; } = null!;

        [Column("DocumentDescription")]
        public string? DocumentDescription { get; set; }
    }
}
