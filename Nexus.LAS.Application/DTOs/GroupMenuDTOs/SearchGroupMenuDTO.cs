using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.GroupMenuDTOs
{
    public class SearchGroupMenuDTO
    {
        public int Id {  get; set; }
        public int GroupId { get; set; }
        public int MenuId { get; set; }
        public string GroupName { get; set; }
        public string MenuName { get; set; }
        public bool? Access { get; set; } = false;
        public bool? CanInsert { get; set; } = false;
        public bool? CanUpdate { get; set; } = false;
        public bool? CanDelete { get; set; } = false;
        public bool? Admin { get; set; } = false;
    }
}
