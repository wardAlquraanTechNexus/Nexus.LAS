using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.PersonDTOs
{
    public class GetAllPersonDto
    {
        public int Id { get; set; }
        public string? PersonIdc { get; set; }
        public string? PersonCode { get; set; }
        public string? PersonEnglishName { get; set; }
        public string? PersonArabicName { get; set; }
        public string? PersonShortName { get; set; }
        public string PersonStatus { get; set; } = null!;
        public string FPCCode { get; set; }
        public bool Private { get; set; }



    }
}
