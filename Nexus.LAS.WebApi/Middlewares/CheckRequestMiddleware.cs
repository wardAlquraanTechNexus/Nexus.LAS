
using Microsoft.AspNetCore.Authorization;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Exceptions;
using System.Security.Claims;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class CheckRequestMiddleware
    {
        private readonly RequestDelegate _next;
        public CheckRequestMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context, IUserService _userService)
        {
            var endpoint = context.GetEndpoint();

            if (endpoint != null)
            {
                var customAuthAttr = endpoint.Metadata.GetMetadata<AuthorizeAttribute>();
                if (customAuthAttr != null)
                {
                    var user = context.User;

                    if (!user.Identity?.IsAuthenticated ?? true)
                    {
                        throw new NotAuthorizedException();
                    }
                    var email = user.FindFirst(ClaimTypes.Email)?.Value;
                    var userDto = await _userService.FindUserByEmailOrUsename(email);

                    if (userDto is null)
                    {
                        NotAuthorizedException ex = new NotAuthorizedException($"the email {email} is not found");
                        throw ex;
                    }
                }
            }

            await _next(context);
        }

    }

}
