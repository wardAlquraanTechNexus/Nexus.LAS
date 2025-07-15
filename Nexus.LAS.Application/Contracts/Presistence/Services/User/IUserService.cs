using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.Identity;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IUserService : IGenericService<User>
    {
        Task<AuthResponse> Login(AuthRequest request);
    }
}
