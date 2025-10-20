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
        [IgnoreOnExport]
        public string MainIdc { get; set; }
        [IgnoreOnExport]
        public string SubIdc { get; set; }
        [IgnoreOnExport]
        public int ExpiryPeriod { get; set; }
        [IgnoreOnExport]
        public bool ActiveReminder { get; set; }
        [IgnoreOnExport]
        public string CreatedBy { get; set; }
        [IgnoreOnExport]
        public DateTime CreatedAt { get; set; }
        [IgnoreOnExport]
        public string? ModifiedBy { get; set; }
        [IgnoreOnExport]
        public DateTime? ModifiedAt { get; set; }
        [IgnoreOnExport]
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

        public string ExpiredPeriod => ExpiryPeriod switch
        {
            -15 => "Before 15 Days",
            -30 => "Before 30 Days",
            -45 => "Before 45 Days",
            15 => "Within 15 Days",
            30 => "Within 30 Days",
            45 => "Within 45 Days",
        };
    }
}
