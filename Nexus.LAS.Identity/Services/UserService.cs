using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Identity.IdentityDbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Identity.Services
{
    public class UserService(NexusLASIdentityDbContext _context, IHttpContextAccessor _contextAccessor) : IUserService
    {
        public string UserId => _contextAccessor?.HttpContext?.User?.FindFirstValue("uid") ?? string.Empty;

        public async Task<UserDto?> FindUserByEmail(string useremail)
        {
            var user = await _context.Users.FirstOrDefaultAsync(x=>x.LoginName == useremail);
            if (user == null)
            {
                return null;
            }
            return new UserDto();
        }
    }
}
