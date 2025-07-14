using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.NumberEntities
{
    [Table("Numbers")]
    public class Number:BaseEntity
    {
        [Key]
        [Column("NumberValue")]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]

        public override int Id { get; set; }

    }
}
