using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.SearchDTOs
{
    public class GlobalSearchDTO
    {
        public int EntityId { get; set; }
        public string EntityIdc { get; set; }
        public string EntityCode { get; set; }
        public string EntityType { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
