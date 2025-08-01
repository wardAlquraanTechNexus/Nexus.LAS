﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.MenuDTOs
{
    public class MenuTreeDTO
    {
        public int MenuId { get; set; }
        public int? MenuParentId { get; set; }
        public string Name { get; set; } = null!;
        public string? Path { get; set; }
        public string? IconClass { get; set; }
        public int? Access { get; set; }
        public int? CanInsert { get; set; }
        public int? CanUpdate { get; set; }
        public int? CanDelete { get; set; }
        public string Username { get; set; }
        public bool InDashboard { get; set; }
        public List<MenuTreeDTO> Children { get; set; } = new();
    }
}
