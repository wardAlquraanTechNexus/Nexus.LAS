using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs
{
    public class MenuDto
    {
        public int Id { get; set; }
        public int? ParentId { get; set; }
        public string Name { get; set; } = null!;
        public string? Path { get; set; }
        public int? Rank { get; set; }
        public string? Description { get; set; }
        public string? IconClass { get; set; }
        public bool InDashboard { get; set; }
        public string? ParentName { get; set; }
    }
}
