using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.CommonDTOs
{
    public class GlobalDocumentExpiredDto
    {
        public int Id { get; set; }
        public string MainIdc { get; set; }
        public string SubIdc { get; set; }
        public int ExpiryPeriod { get; set; }
        public bool ActiveReminder { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public string? ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }
        public DateTime ExpiryDate { get; set; }

        // Computed properties — safe for EF Core
        public string MainType => MainIdc switch
        {
            EntityIDCs.Person => "Person",
            EntityIDCs.Company => "Company",
            EntityIDCs.Properties => "Real Estate",
            _ => ""
        };

        public string SubType => SubIdc switch
        {
            EntityIDCs.PersonIdDetail => "Person Id Detail",
            EntityIDCs.CompaniesChamberOfCommerces => "Chamber Of Commerce",
            EntityIDCs.CompaniesLicenseIDC => "Licenses & Registers",
            EntityIDCs.CompaniesContracts => "Company Contracts",
            EntityIDCs.PropertyDocuments => "Property Documents",
            _ => ""
        };
    }
}
