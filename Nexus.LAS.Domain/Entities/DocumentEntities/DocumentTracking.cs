using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.DocumentEntities
{
    [Table("DocumentTrackings")]

    public class DocumentTracking:BaseEntity
    {
        [Column("DocumentTrackingIDC")]
        [MaxLength(50)]
        public string DocumentTrackingIdc { get; set; } = EntityIDCs.DocumentTrackings;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("DocumentTrackingIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("DocumentTrackingCode")]
        [MaxLength(50)]
        public string DocumentTrackingCode { get; set; }

        [Column("ReferenceNumber")]
        [MaxLength(50)]
        public string ReferenceNumber { get; set; }

        [Required]
        [Column("Persons_IDN")]
        public int PersonId { get; set; }

        [Required]
        [Column("Registers_IDC")]
        [MaxLength(50)]
        public string RegisterIdc { get; set; }

        [Required]
        [Column("Registers_IDN")]
        public int RegisterIdn { get; set; }

        [Column("Description")]
        [MaxLength(4000)]
        public string Description { get; set; }
        [ForeignKey(nameof(PersonId))]
        public Person Person { get; set; }
    }
}
