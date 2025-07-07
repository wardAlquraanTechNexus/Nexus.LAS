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
    public class PropertiesStatus // no base entity here as no audit columns
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public int Id { get; set; }

        [Column("Property_IDN")]
        public int? PropertyIdn { get; set; }

        [Column("Property_Code")]
        public string? PropertyCode { get; set; }

        public string? Status { get; set; }
    }
}
