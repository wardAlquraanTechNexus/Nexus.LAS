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
    [Table("PropertiesStatus")]
    public class PropertiesStatus :BaseEntity
    {

        [Column("Property_IDN")]
        public int? PropertyIdn { get; set; }

        [Column("Property_Code")]
        public string? PropertyCode { get; set; }

        public string? Status { get; set; }
    }
}
