using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("DynamicLists")]
    public class DynamicList: BaseEntity
    {
        [Key]
        [Column("DynamicListIDC")]
        [MaxLength(50)]
        public string DynamicListIdC { get; set; } = null!;

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("DynamicListIDN")]
        public int DynamicListIdN { get; set; }

        [Column("LinkedCategory")]
        [MaxLength(50)]
        public string? LinkedCategory { get; set; }

        [Column("MainListID")]
        public int? MainListID{ get; set; }

        [Column("MenuCategory")]
        [MaxLength(50)]
        public string? MenuCategory { get; set; }

        [Column("MenuValue")]
        public string? MenuValue { get; set; }

        [Column("Active")]
        public bool? Active { get; set; }

        [Column("Rank")]
        public int? Rank { get; set; }

    }
}
