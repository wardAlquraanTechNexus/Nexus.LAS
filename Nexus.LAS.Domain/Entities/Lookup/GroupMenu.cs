using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Lookup;

[Table("GroupsMenus")]
public class GroupMenu: BaseEntity
{
    [ForeignKey("Group")]
    [Column("GroupID", Order = 0)]
    public int GroupId { get; set; }

    [ForeignKey("Menu")]
    [Column("MenuID", Order = 1)]
    public int MenuId { get; set; }

    [Column("Access")]
    public bool Access { get; set; }

    [Column("CanInsert")]
    public bool CanInsert { get; set; }

    [Column("CanUpdate")]
    public bool CanUpdate { get; set; }

    [Column("CanDelete")]
    public bool CanDelete { get; set; }

    [Column("Admin")]
    public bool Admin { get; set; }

    // Navigation properties (optional)
    public virtual Group? Group { get; set; }
    public virtual Menu? Menu { get; set; }
}
