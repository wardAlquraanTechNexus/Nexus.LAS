using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.CompanyDTOs
{
    public class AssetsShareholderDto
    {
        public string CompanyName { get; set; }
        public long SharesCount { get; set; }
        public int OwnedSahresCount { get; set; }
        public DateTime? Date { get; set; }
        public double? SharePercentage { get; set; }
        public bool IsActive { get; set; }
    }
}
