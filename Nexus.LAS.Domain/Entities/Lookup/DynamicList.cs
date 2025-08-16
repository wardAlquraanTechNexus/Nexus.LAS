using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Lookup;

[Table("DynamicLists")]
public class DynamicList: BaseEntity
{
    [Key]
    [Column("DynamicListIDC")]
    [MaxLength(50)]
    public string DynamicListIdC { get; set; } = EntityIDCs.DynamicList;

    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("DynamicListIDN")]
    public override int Id { get; set; }

    [Column("MainListID")]
    public int? ParentId { get; set; }

    [Column("MenuValue")]
    public string? Name { get; set; }
    public string? LinkedCategory { get; set; }
    public string? MenuCategory { get; set; }

    [Column("Active")]
    public bool? Active { get; set; }

    [Column("Rank")]
    public int? Rank { get; set; }

}
