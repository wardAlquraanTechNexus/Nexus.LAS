using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("GroupsMenus")]
    public class GroupMenu
    {
        public int GroupId { get; set; }
        public int MenuId { get; set; }
        public bool? Access { get; set; }
        public bool? CanInsert { get; set; }
        public bool? CanUpdate { get; set; }
        public bool? CanDelete { get; set; }
        public bool? Admin { get; set; }

        // Navigation properties
        public virtual Group Group { get; set; }
        public virtual Menu Menu { get; set; }
    }
}
