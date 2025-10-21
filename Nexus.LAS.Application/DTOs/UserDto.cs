using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs
{
    public class UserDto
    {
        public string Id { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string? LastName { get; set; }
        public string? Username { get; set; }
        public string PhoneNumber { get; set; }
        public string? ProfilePicture { get; set; }
        public string? LoginName { get; set; }
        public string? NTLogin { get; set; }
        public int? PersonsIdN { get; set; }
        public IEnumerable<RoleDto> Roles { get; set; }
        public DateTimeOffset? LockoutEnd { get; set; }
        public bool LockoutEnabled { get; set; }
        public bool IsInRole(string role) => Roles.Any(r => r.Name == role);
        public string? PersonName { get; set; }
    }
}
