using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.PersonEmailDTOs
{
    public class PersonEmailDto
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public bool EmailPrimary { get; set; }
        public string? CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string? ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }
        public int PersonsIdn { get; set; }

    }
}
