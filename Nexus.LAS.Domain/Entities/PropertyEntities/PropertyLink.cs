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
    [Table("PropertyLinks")]
    public class PropertyLink : BaseEntity
    {
        [Column(Order = 0)]
        public string PropertyLinksIdc { get; set; } = null!;

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public int PropertyLinksIdn { get; set; }

        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; } = null!;

        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        public string PropertyLinksValue { get; set; } = null!; // renamed to avoid conflict with class name

        public string? PropertyLinksRemarks { get; set; }
    }
}
