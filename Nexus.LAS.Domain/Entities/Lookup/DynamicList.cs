using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("DynamicLists")]
    public class DynamicList: BaseEntity
    {
        public int DynamicListIDC { get; set; }
        public int DynamicListIDN { get; set; }
        public string? LinkedCategory { get; set; }
        public int? MainListID { get; set; }
        public string? MenuCategory { get; set; }
        public string? MenuValue { get; set; }
        public bool? Active { get; set; }
        public int? Rank { get; set; }

    }
}
