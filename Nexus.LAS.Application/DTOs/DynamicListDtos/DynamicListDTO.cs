using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.DynamicListDtos
{
    public class DynamicListDTO
    {
        public int Id { get; set; }
        public string? LinkedCategory { get; set; }
        public int? MainListId { get; set; }
        public string? MenuCategory { get; set; }
        public string? MenuValue { get; set; }
        public bool? Active { get; set; }
        public int? Rank { get; set; }

    }
}
