using Newtonsoft.Json;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.WebApi.Models;
using System.Net;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class ExceptionMiddleware
    {

        private readonly RequestDelegate _next;
        private readonly ILogger<ExceptionMiddleware> _logger;

        public ExceptionMiddleware(RequestDelegate next, ILogger<ExceptionMiddleware> logger)
        {
            _next = next;
            _logger = logger;
        }
        public async Task InvokeAsync(HttpContext context)
        {
            try
            {
                await _next(context);
            }
            catch (Exception ex)
            {
                await HandleExceptionAsync(context, ex);
            }
        }

        private async Task HandleExceptionAsync(HttpContext httpContext, Exception ex)
        {
            HttpStatusCode statusCode = HttpStatusCode.InternalServerError;
            CustomProblemDetails problem = new();
            switch (ex)
            {
                case BadRequestException badRequestException:
                    statusCode = HttpStatusCode.BadRequest;
                    problem = new CustomProblemDetails
                    {
                        Title = badRequestException.Message,
                        Status = (int)statusCode,
                        Detail = badRequestException.InnerException?.Message ?? "A bad request occurred.",
                        Type = nameof(BadRequestException),
                        Errors = badRequestException.ValidationErrors
                    };
                    break;

                case NotFoundException NotFound:
                    statusCode = HttpStatusCode.NotFound;
                    problem = new CustomProblemDetails
                    {
                        Title = NotFound.Message,
                        Status = (int)statusCode,
                        Type = nameof(NotFoundException),
                        Detail = NotFound.InnerException?.Message ?? "Resource not found.",
                    };
                    break;
                case ForbidException Forbid:
                    statusCode = HttpStatusCode.Forbidden;
                    problem = new CustomProblemDetails
                    {
                        Title = Forbid.Message,
                        Status = (int)statusCode,
                        Type = nameof(NotFoundException),
                        Detail = Forbid.InnerException?.Message ?? "Access Forbidden.",

                    };
                    break;
                case NotAuthorizedException Forbid:
                    statusCode = HttpStatusCode.Unauthorized;
                    problem = new CustomProblemDetails
                    {
                        Title = Forbid.Message,
                        Status = (int)statusCode,
                        Type = nameof(NotFoundException),
                        Detail = Forbid.InnerException?.Message ?? "Unauthorized.",

                    };
                    break;
                default:
                    problem = new CustomProblemDetails
                    {
                        Title = ex.Message,
                        Status = (int)statusCode,
                        Type = nameof(HttpStatusCode.InternalServerError),
                        Detail = ex.InnerException?.Message ?? "An internal server error occurred.", //ex.StackTrace,
                    };
                    break;
            }
            var logMessage = JsonConvert.SerializeObject(problem);
            _logger.LogError(logMessage);
            httpContext.Response.StatusCode = (int)statusCode;
            httpContext.Response.ContentType = "application/json";
            await httpContext.Response.WriteAsync(logMessage);

        }
    }
}
