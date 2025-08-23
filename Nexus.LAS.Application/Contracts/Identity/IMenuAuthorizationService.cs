using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Identity
{
    public interface IMenuAuthorizationService
    {
        Task<bool> HasAccessAsync(string username, string pathname, Domain.Constants.Enums.MethodType methodType);
    }
}
