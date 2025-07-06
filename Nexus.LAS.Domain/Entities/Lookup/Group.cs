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
        [Key]
        public int Id { get; set; }
        public string GroupName { get; set; }
        public string? Description { get; set; }
    }
}
