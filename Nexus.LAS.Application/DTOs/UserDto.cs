using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs
{
    public class UserDto
    {
        public int Id { get; set; }
        public string LoginName { get; set; }
        public string FirstName { get; set; }
        public string? LastName { get; set; }
        public string? UserName { get; set; }
        public string PhoneNumber { get; set; }
        public string? ProfilePicture { get; set; }
        public IEnumerable<RoleDto> Roles { get; set; }
        public DateTimeOffset? LockoutEnd { get; set; }
        public bool LockoutEnabled { get; set; }
        public bool IsInRole(string role) => Roles.Any(r => r.Name == role);
    }
}
