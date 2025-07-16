using Microsoft.AspNetCore.Authorization;
using Nexus.LAS.Application.Contracts.Identity;
using System.Security.Claims;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class LasAuthorizeHandler: AuthorizationHandler<LasAuthorize>
    {
        private readonly IUserIdentityService _userService;

        public LasAuthorizeHandler(IUserIdentityService userService)
        {
            _userService = userService;
        }

        protected override async Task HandleRequirementAsync(AuthorizationHandlerContext context,
                                                         LasAuthorize requirement)
        {
            var userId = context.User.FindFirstValue("Username");
            if (userId == null)
                return;

            var userDto = await _userService.FindUserByEmailOrUsename(userId);
            if (userDto is not null)
            {
                context.Succeed(requirement);
            }
        }
    }
}
