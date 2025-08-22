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
            var menus = await _menuService.GetAllMenusByPath(pathes[^1]);

            if (menus.Any())
            {
                // Only perform checks if menus exist
                var menuUsers = menus.FirstOrDefault(m => m.Username.Equals(userId, StringComparison.OrdinalIgnoreCase));
                if (menuUsers == null)
                    throw new BadRequestException($"You have no menu on path {pathname}");

                var methodTypeAttribute = endpoint.Metadata.GetMetadata<ApiMethodTypeAttribute>();
                if (methodTypeAttribute != null)
                {
                    bool isAuth =
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Get && menus.Any(x => x.Access)) ||
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Insert && menus.Any(x => x.CanInsert)) ||
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Update && menus.Any(x => x.CanUpdate)) ||
                    (methodTypeAttribute.Method == Domain.Constants.Enums.MethodType.Delete && menus.Any(x => x.CanDelete)) ||
                    menus.Any(x => x.Admin);

                    if (!isAuth)
                        throw new Exception($"You have no access");
                }
            }
            // If menus do not exist, skip menu checks and continue

            await next();
        }

        public void OnActionExecuted(ActionExecutedContext context) { }
    }
}
