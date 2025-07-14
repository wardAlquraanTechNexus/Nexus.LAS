using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("Groups")]
    public class Group : BaseEntity
    {

        [Required]
        [MaxLength(50)]
        [Column("GroupName")]
        public string GroupName { get; set; } = null!;

        [MaxLength(200)]
        [Column("Description")]
        public string? Description { get; set; }
    }
}
