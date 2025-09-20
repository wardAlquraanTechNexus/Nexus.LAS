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
    [Table("PropertyLinks")]
    public class PropertyLink : BaseEntity
    {
        [Column(Order = 0)]
        public string PropertyLinksIdc { get; set; } = EntityIDCs.PropertyLinks;

        [Key]
        [Column("PropertyLinksIdn" , Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public override int Id { get; set; }


        [Column("Registers_IDC")]
        public string RegisterIdc { get; set; } = null!;

        [Column("Registers_IDN")]
        public int RegisterIdn { get; set; }

        public int PropertyLinksValue { get; set; } // renamed to avoid conflict with class name

        public string? PropertyLinksRemarks { get; set; }
    }
}
