﻿using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Identity.IdentityDbContext;
using System.Security.Claims;

namespace Nexus.LAS.Identity.Services
{
    public class UserIdentityService(NexusLASIdentityDbContext _context, IHttpContextAccessor _contextAccessor) : IUserIdentityService
    {
        public string UserId => _contextAccessor?.HttpContext?.User?.FindFirstValue("uid") ?? string.Empty;
        public string Username => _contextAccessor?.HttpContext?.User?.FindFirstValue("Username") ?? string.Empty;

        public async Task<UserDto?> FindUserByEmailOrUsename(string useremail)
        {
            var user = await _context.Users.FirstOrDefaultAsync(x=>x.Email == useremail || x.UserName == useremail);
            if (user == null)
            {
                return null;
            }
            var roles = await _context.Roles
                             .Where(r => _context.UserRoles
                                 .Where(ur => ur.UserId == user.Id)
                                 .Select(ur => ur.RoleId)
                                 .Contains(r.Id))
                             .Select(r => new RoleDto
                             {
                                 Id = r.Id,
                                 Name = r.Name,
                                 NormalizedName = r.NormalizedName
                             })
                             .ToListAsync();

            return new UserDto()
            {
                Email = user.Email,
                LockoutEnabled = user.LockoutEnabled,
                LockoutEnd = user.LockoutEnd,
                FirstName = user.FirstName,
                Id = user.Id,
                LastName = user.LastName,
                PhoneNumber = user.PhoneNumber,
                ProfilePicture = user.ProfilePicture,
                Roles = roles
            };
        }
    }
}
