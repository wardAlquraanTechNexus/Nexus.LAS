using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.ViewModels.Menus
{
    public class MenuGroupAuthorizeVM
    {
        public int Id { get; set; }
        public int MenuId { get; set; }
        public int? MenuParentId { get; set; }
        public string Name { get; set; } = null!;
        public string? Path { get; set; }
        public string? IconClass { get; set; }
        public bool Access { get; set; }
        public bool CanInsert { get; set; }
        public bool CanUpdate { get; set; }
        public bool CanDelete { get; set; }
        public bool Admin {  get; set; }
        public string Username { get; set; }
        public bool InDashboard { get; set; }
        public int? Rank { get; set; }
    }
}
