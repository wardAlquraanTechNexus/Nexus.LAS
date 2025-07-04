using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases
{
    public interface IUserContext
    {
        CurrentUser? GetCurrentUser();
    }

    public class UserContext(IHttpContextAccessor httpContextAccessor) : IUserContext
    {
        public CurrentUser? GetCurrentUser()
        {

            var user = httpContextAccessor?.HttpContext?.User;
            if (user == null)
            {
                throw new InvalidOperationException("User context is not present");
            }

            if (user.Identity == null || !user.Identity.IsAuthenticated)
            {
                return null;
            }

            var userId = user.FindFirst(c => c.Type == "uid")?.Value;
            var email = user.FindFirst(c => c.Type == ClaimTypes.Email)?.Value;
            var roles = user.Claims.Where(c => c.Type == ClaimTypes.Role).Select(c => c.Value);
            var phoneNumber = user.FindFirst(c => c.Type == "PhoneNumber")?.Value;
            var firstName = user.FindFirst(c => c.Type == "FirstName")?.Value;
            var lastName = user.FindFirst(c => c.Type == "LastName")?.Value;

            if (userId == null || email == null)
            {
                throw new InvalidOperationException("Required user claims are missing");
            }

            return new CurrentUser(userId, email, roles, phoneNumber, firstName ?? "", lastName);
        }
    }
}
