using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("GroupsMenus")]
    public class GroupMenu
    {
        [Key]
        [ForeignKey("Group")]
        [Column("GroupID", Order = 0)]
        public int GroupId { get; set; }

        [Key]
        [ForeignKey("Menu")]
        [Column("MenuID", Order = 1)]
        public int MenuId { get; set; }

        [Column("Access")]
        public int? Access { get; set; }

        [Column("CanInsert")]
        public int? CanInsert { get; set; }

        [Column("CanUpdate")]
        public int? CanUpdate { get; set; }

        [Column("CanDelete")]
        public int? CanDelete { get; set; }

        [Column("Admin")]
        public int? Admin { get; set; }

        // Navigation properties (optional)
        public virtual Group? Group { get; set; }
        public virtual Menu? Menu { get; set; }
    }
}
