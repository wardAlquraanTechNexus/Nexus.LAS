using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.DocumentEntities
{
    [Table("Documents")]
    public class Document:BaseEntity
    {
        [Column("DocumentIDC")]
        [MaxLength(50)]
        public string DocumentIdc { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("DocumentIDN")]
        public int DocumentIdn { get; set; }

        [Column("SharepointFilename")]
        public string SharepointFilename { get; set; }

        [Column("DocumentPath")]
        public string DocumentPath { get; set; }

        [Column("DocumentINDateReceived")]
        public DateTime? DocumentInDateReceived { get; set; }

        [Column("DocumentINDescription")]
        [MaxLength(50)]
        public string DocumentInDescription { get; set; }

        [Column("DocumentINReceivedFrom")]
        [MaxLength(50)]
        public string DocumentInReceivedFrom { get; set; }

        [Column("DocumentINReason")]
        [MaxLength(50)]
        public string DocumentInReason { get; set; }

        [Column("DocumentOutDateCollected")]
        [MaxLength(50)]
        public string DocumentOutDateCollected { get; set; }

        [Column("DocumentOutCollectedBy")]
        [MaxLength(50)]
        public string DocumentOutCollectedBy { get; set; }

        [Column("DocumentOutReason")]
        [MaxLength(50)]
        public string DocumentOutReason { get; set; }
    }
}
