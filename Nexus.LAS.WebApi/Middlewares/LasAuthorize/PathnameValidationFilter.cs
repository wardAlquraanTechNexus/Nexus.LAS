using Microsoft.AspNetCore.Mvc.Filters;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.WebApi.Attributes;
using System.Security.Claims;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class PathnameValidationFilter : IAsyncActionFilter
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IMenuService _menuService;

        public PathnameValidationFilter(IHttpContextAccessor httpContextAccessor, IMenuService menuService)
        {
            _httpContextAccessor = httpContextAccessor;
            _menuService = menuService;
        }

        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            var httpContext = _httpContextAccessor.HttpContext;
            var userId = httpContext?.User.FindFirstValue("Username");
            var pathname = httpContext?.Request.Headers["pathname"].ToString();
            var endpoint = httpContext.GetEndpoint();

            if (string.IsNullOrWhiteSpace(pathname))
                throw new NotFoundException("Header", "pathname");

            var pathes = pathname.Split('/');

            var menus = await _menuService.GetAllMenusByPath(pathes[pathes.Length - 1]);
            
            // Only check authorization if menus exist and methodTypeAttribute is present
            var methodTypeAttribute = endpoint.Metadata.GetMetadata<ApiMethodTypeAttribute>();

            if (methodTypeAttribute != null && menus.Any())
            {
                var menuUsers = menus.FirstOrDefault(x => x.Username.Equals(userId, StringComparison.OrdinalIgnoreCase));

                if (menuUsers == null)
                {
                    throw new BadRequestException($"You have no menu on path {pathname}");
                }

                var methodType = methodTypeAttribute.Method;
                bool isAuth =
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Get && menuUsers.Access) ||
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Insert && menuUsers.CanInsert) ||
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Update && menuUsers.CanUpdate) ||
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Delete && menuUsers.CanDelete);

                if (!isAuth)
                {
                    throw new Exception($"You have no access");
                }
            }

            await next();
        }

        public void OnActionExecuted(ActionExecutedContext context) { }
    }
}
