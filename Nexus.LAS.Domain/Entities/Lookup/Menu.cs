using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("Menus")]
    public class Menu
    {
        [Key]
        public int Id { get; set; }
        public int? ParentId { get; set; }  // Nullable for root categories
        public string Name { get; set; }
        public string? Path { get; set; }
        public int? Rank { get; set; }
        public string? Description { get; set; }
    }
}
