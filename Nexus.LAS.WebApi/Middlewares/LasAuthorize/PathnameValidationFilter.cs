using Microsoft.AspNetCore.Mvc.Filters;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Exceptions;
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

            if (string.IsNullOrWhiteSpace(pathname))
                throw new NotFoundException("Header", "pathname");

            var menus = await _menuService.GetAllMenusByPath(pathname.TrimStart('/'));
            if (menus.Any())
            {
                if (!menus.Any(m => m.Username.Equals(userId, StringComparison.OrdinalIgnoreCase)))
                    throw new BadRequestException($"You have no menu on path {pathname}");
            }

            await next();
        }

        public void OnActionExecuted(ActionExecutedContext context) { }
    }
}
