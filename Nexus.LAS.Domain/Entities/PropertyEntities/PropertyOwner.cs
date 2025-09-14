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
    [Table("PropertiesOwners")]
    public class PropertyOwner : BaseEntity
    {
        [Column("PropertiesOwnerIDC", Order = 0)]
        public string PropertiesOwnerIdc { get; set; } = null!;

        [Key, Column("PropertiesOwnerIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public override int Id { get; set; }

        [Column("Properties_IDN")]
        public int PropertyId { get; set; }

        [Column("Registers_IDC")]
        public string RegisterIdc { get; set; }

        [Column("Registers_IDN")]
        public int RegisterIdn { get; set; }

        public string? Relation { get; set; }
        public DateTime? OwnStartDate { get; set; }
        public DateTime? OwnFinishDate { get; set; }
        public bool? OwnActive { get; set; }
        public string? Remarks { get; set; }
    }
}
