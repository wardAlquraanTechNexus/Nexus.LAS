using Microsoft.AspNetCore.Authorization;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Exceptions;
using System.Security.Claims;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class CheckRequestMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly ILogger<CheckRequestMiddleware> _logger;

        public CheckRequestMiddleware(RequestDelegate next, ILogger<CheckRequestMiddleware> logger)
        {
            _next = next;
            _logger = logger;
        }

        public async Task InvokeAsync(HttpContext context, IUserIdentityService _userService)
        {
            try
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
                        if (string.IsNullOrEmpty(email))
                        {
                            throw new NotAuthorizedException("Email claim not found");
                        }

                        var userDto = await _userService.FindUserByEmailOrUsename(email);
                        if (userDto is null)
                        {
                            throw new NotAuthorizedException($"User with email {email} not found");
                        }
                    }
                }

                await _next(context);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error in CheckRequestMiddleware");
                throw;
            }
        }
    }
}
