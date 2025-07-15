using Nexus.LAS.Application.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Identity
{
    public interface IUserIdentityService
    {
        Task<UserDto?> FindUserByEmailOrUsename(string email);
        string UserId { get; }
        string Username { get; }


    }
}
