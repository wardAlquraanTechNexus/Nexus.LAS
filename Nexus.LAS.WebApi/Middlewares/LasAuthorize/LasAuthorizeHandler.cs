using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Exceptions;
using System.Security.Claims;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class LasAuthorizeHandler: AuthorizationHandler<LasAuthorize>
    {
        private readonly IUserIdentityService _userService;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IMenuService _menuService;
        public LasAuthorizeHandler(IUserIdentityService userService, IHttpContextAccessor httpContextAccessor, IMenuService menuService)
        {
            _userService = userService;
            _httpContextAccessor = httpContextAccessor;
            _menuService = menuService;
        }

        protected override async Task HandleRequirementAsync(AuthorizationHandlerContext context, LasAuthorize requirement)
        {
            try
            {
                var httpContext = _httpContextAccessor.HttpContext;
                if (httpContext == null)
                    return;

                var userId = context.User.FindFirstValue("Username");
                if (userId == null)
                    return;

                var pathname = httpContext.Request.Headers.FirstOrDefault(x => x.Key.Equals("pathname", StringComparison.OrdinalIgnoreCase));
                if (string.IsNullOrEmpty(pathname.Key) || string.IsNullOrEmpty(pathname.Value))
                {
                    
                    return;
                }

                var menus = await _menuService.GetAllMenusByPath(pathname.Value.ToString().TrimStart('/'));

                if (menus.Any())
                {
                    var menuUsers = menus.FirstOrDefault(x => x.Username.Equals(userId, StringComparison.OrdinalIgnoreCase));
                    if (menuUsers is null)
                    {
                        return; // no access
                    }
                }

                var userDto = await _userService.FindUserByEmailOrUsename(userId);
                if (userDto is not null)
                {
                    context.Succeed(requirement);
                }
            }
            catch (Exception ex)
            {
                // Optional logging
                Console.WriteLine($"[Authorization Error]: {ex.Message}");
                // Don't throw
            }
        }

    }
}
