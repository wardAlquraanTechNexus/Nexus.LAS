using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.PersonAddressDTOs
{
    public class PersonAddressDto
    {
        public int? Id { get; set; }
        public int PersonsIdn { get; set; }
        public bool AddressPrimary { get; set; }
        public string AddressLine1 { get; set; } = null!;
        public string? POBoxCity { get; set; }
        public string? POBoxCountry { get; set; }
        public string? CreatedBy { get; set; }
        public DateTime? CreationDate { get; set; }
        public string? ModefiedBy { get; set; }
        public DateTime? ModificationDate { get; set; }
    }
}
