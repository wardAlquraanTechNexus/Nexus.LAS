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
    [Table("PersonsCapacities")]
    public class PersonsCapacity : BaseEntity
    {
        [Key, Column("PersonsCapacityIDC", Order = 0)]
        public string PersonsCapacityIdc { get; set; } = null!;

        [Key, Column("PersonsCapacityIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }

        [Column("Persons_IDN")]
        public int PersonsIdn { get; set; }

        [Required, Column("CapacityName")]
        public string CapacityName { get; set; } = null!;

        [Column("CapacityOther")]
        public string? CapacityOther { get; set; }

        [Column("CapacityHourRate")]
        public double? CapacityHourRate { get; set; }
    }

}
