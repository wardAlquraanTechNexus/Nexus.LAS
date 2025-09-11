using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.WebApi.Attributes;
using SendGrid.Helpers.Errors.Model;
using System.Security.Claims;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class LasAuthorizeHandler : AuthorizationHandler<LasAuthorize>
    {
        private readonly IUserIdentityService _userService;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IMenuAuthorizationService _menuAuthorizationService;
        public LasAuthorizeHandler(IUserIdentityService userService, IHttpContextAccessor httpContextAccessor, IMenuAuthorizationService menuAuthorizationService)
        {
            _userService = userService;
            _httpContextAccessor = httpContextAccessor;
            _menuAuthorizationService = menuAuthorizationService;
        }

        protected override async Task HandleRequirementAsync(AuthorizationHandlerContext context, LasAuthorize requirement)
        {
            var httpContext = _httpContextAccessor.HttpContext;
            if (httpContext == null)
            {
                context.Fail();
                return;
            }

            var userId = context.User.FindFirstValue("Username");
            if (userId.IsNullOrEmpty())
            {
                throw new NotAuthorizedException();
            }
            var pathname = httpContext.Request.Headers["pathname"].ToString();
            var endpoint = httpContext.GetEndpoint();

            var methodTypeAttr = endpoint?.Metadata.GetMetadata<ApiMethodTypeAttribute>();
            var methodType = methodTypeAttr?.Method ?? Domain.Constants.Enums.MethodType.Get;

            var hasAccess = await _menuAuthorizationService.HasAccessAsync(userId, pathname, methodType);
            if (!hasAccess)
            {
                context.Fail();
                throw new MenuAuthorizeException("You Have no access");
            }

            context.Succeed(requirement);
        }


       

    }
}
