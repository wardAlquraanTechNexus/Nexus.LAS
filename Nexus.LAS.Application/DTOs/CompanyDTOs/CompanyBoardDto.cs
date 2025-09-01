using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.CompanyDTOs
{
    public class CompanyBoardDto
    {
        public int Id { get; set; }
        public int CompanyId { get; set; }
        public DateTime BoardDate { get; set; }
        public bool BoardActive { get; set; }
    }
}
