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
    [Table("Menus")]
    public class Menu:BaseEntity
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("id")]
        public int Id { get; set; }

        [Column("ParentID")]
        public int? ParentId { get; set; }

        [Required]
        [Column("Name")]
        [StringLength(50)]
        public string Name { get; set; } = null!;

        [Column("Path")]
        [StringLength(50)]
        public string? Path { get; set; }

        [Column("Rank")]
        public int? Rank { get; set; }

        [Column("Description")]
        [StringLength(50)]
        public string? Description { get; set; }
    }
}
