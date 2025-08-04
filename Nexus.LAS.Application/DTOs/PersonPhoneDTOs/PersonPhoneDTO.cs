using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.PersonPhoneDTOs
{
    public class PersonPhoneDTO
    {
        public int? Id { get; set; }
        public int? PersonsIdn { get; set; }

        public bool? PhonePrimary { get; set; }
        public int? PhoneType { get; set; }
        public string? PhoneNumber { get; set; }
        public string? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string? ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

    }
}
