using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.CompanyDTOs
{
    public class CompanyAccountSignatoryDTO
    {
        public int Id { get; set; }
        public int CompanyBankAccountId { get; set; }
        public int PersonId { get; set; }
        public int Rule { get; set; }
        public long FromAmount { get; set; }
        public long ToAmount { get; set; }
        public string? Description { get; set; }
        public DateTime? AccountSignatoryDate { get; set; }
        public bool? AccountSignatoryActive { get; set; }
        public string CompanyNameEn { get; set; }
        public string CompanyNameAr { get; set; }
    }
}
