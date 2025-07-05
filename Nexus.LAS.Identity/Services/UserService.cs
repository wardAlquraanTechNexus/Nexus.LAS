using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Identity.Services
{
    public class UserService(UserManager<ApplicationUser> _userManager, RoleManager<IdentityRole> _roleManager, IHttpContextAccessor _contextAccessor) : IUserService
    {
        public async Task<UserDto?> FindUserByEmail(string useremail)
        {
            var user = await _userManager.FindByEmailAsync(useremail);
            if (user == null)
            {
                return null;
            }
            return new UserDto
            {
                Id = user?.Id ?? string.Empty,
                Email = user?.Email ?? string.Empty,
                PhoneNumber = user?.PhoneNumber ?? string.Empty,
                FirstName = user?.FirstName,
                LastName = user?.LastName,
                ProfilePicture = user?.ProfilePicture ?? string.Empty,
            };
        }
    }
}
