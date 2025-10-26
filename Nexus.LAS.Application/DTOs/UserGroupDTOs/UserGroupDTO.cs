using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs
{
    public class UserGroupDTO
    {
        public int? Id { get; set; }
        public int? UserId { get; set; }
        public int? GroupId { get; set; }
        public string? Username { get; set; }
        public string? UserFullName { get; set; }
        public string? GroupName { get; set; }
        public bool IsUserInGroup { get; set; }
    }
}
