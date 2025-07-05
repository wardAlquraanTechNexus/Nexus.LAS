using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Models
{
    public class HostSettings
    {
        public string Host { get; set; }

        public string ConfirmationURL { get; set; }
        public string RFxRequestEditURL { get; set; }
        public string RFxRequestDetailsURL { get; set; }
        public string RFxResponseCreateURL { get; set; }
        public string RFxResponseEditURL { get; set; }
        public string RFxResponseDetailsURL { get; set; }
        public string SupplierPortalRFQ { get; set; }
        public string ResetPasswordURL { get; set; }


        public string CompanyDomain { get; set; }
        public string CompanyName { get; set; }
        public string CompanyLogo { get; set; }
        public string AppEmail { get; set; }


    }
}
