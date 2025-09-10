using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Models
{

    public class AppSettings
    {
        public DynamicListRoots DynamicListRoots { get; set; }
        public int LdStaffId { get; set; }
    }

    public class DynamicListRoots
    {
        public int Nationality { get; set; }
        public int companyType { get; set; }
        public int companyClass { get; set; }
        public int groupCompany { get; set; }
        public int relevantCompany { get; set; }
        public int legalType { get; set; }
        public int placeOfRegistration { get; set; }
        public int companyActivity { get; set; }
        public int currencies { get; set; }
        public int PersonsPhonesTypes { get; set; }
        public int originalDocumentTypes { get; set; }
        public int otherDocumentType { get; set; }
        public int companyContractType { get; set; }
        public int rule { get; set; }
        public int boardPosition { get; set; }
        public int designation { get; set; }
        public int country { get; set; }
    }
}
