using Newtonsoft.Json;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.WebApi.Models;
using System.Net;
using System.Security;
using FluentValidation;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class ExceptionMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly ILogger<ExceptionMiddleware> _logger;
        private readonly IWebHostEnvironment _environment;

        public ExceptionMiddleware(RequestDelegate next, ILogger<ExceptionMiddleware> logger, IWebHostEnvironment environment)
        {
            _next = next;
            _logger = logger;
            _environment = environment;
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

            // Generate correlation ID for tracking
            var correlationId = httpContext.TraceIdentifier ?? Guid.NewGuid().ToString();

            switch (ex)
            {
                case Application.Exceptions.ValidationException validationException:
                    statusCode = HttpStatusCode.BadRequest;
                    problem = new CustomProblemDetails
                    {
                        Title = "Validation Error",
                        Status = (int)statusCode,
                        Type = nameof(Application.Exceptions.ValidationException),
                        Detail = "One or more validation errors occurred.",
                        Errors = validationException.Errors
                    };
                    _logger.LogWarning(ex, "Validation error occurred. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case FluentValidation.ValidationException fluentValidationException:
                    statusCode = HttpStatusCode.BadRequest;
                    var fluentErrors = fluentValidationException.Errors
                        .GroupBy(e => e.PropertyName, e => e.ErrorMessage)
                        .ToDictionary(failureGroup => failureGroup.Key, failureGroup => failureGroup.ToArray());
                    
                    problem = new CustomProblemDetails
                    {
                        Title = "Validation Error",
                        Status = (int)statusCode,
                        Type = nameof(FluentValidation.ValidationException),
                        Detail = "One or more validation errors occurred.",
                        Errors = fluentErrors
                    };
                    _logger.LogWarning(ex, "FluentValidation error occurred. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case BadRequestException badRequestException:
                    statusCode = HttpStatusCode.BadRequest;
                    problem = new CustomProblemDetails
                    {
                        Title = badRequestException.Message,
                        Status = (int)statusCode,
                        Detail = badRequestException.InnerException?.Message ?? "A bad request occurred.",
                        Type = nameof(BadRequestException),
                        Errors = badRequestException.ValidationErrors ?? new Dictionary<string, string[]>()
                    };
                    _logger.LogWarning(ex, "Bad request error occurred. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case NotFoundException notFound:
                    statusCode = HttpStatusCode.NotFound;
                    problem = new CustomProblemDetails
                    {
                        Title = notFound.Message,
                        Status = (int)statusCode,
                        Type = nameof(NotFoundException),
                        Detail = notFound.InnerException?.Message ?? "The requested resource was not found.",
                    };
                    _logger.LogWarning(ex, "Resource not found. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case ForbidException forbid:
                    statusCode = HttpStatusCode.Forbidden;
                    problem = new CustomProblemDetails
                    {
                        Title = forbid.Message.IsNullOrEmpty() ? "Access Forbidden" : forbid.Message,
                        Status = (int)statusCode,
                        Type = nameof(ForbidException),
                        Detail = forbid.InnerException?.Message ?? "You do not have permission to access this resource.",
                    };
                    _logger.LogWarning(ex, "Access forbidden. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case NotAuthorizedException unauthorized:
                    statusCode = HttpStatusCode.Unauthorized;
                    problem = new CustomProblemDetails
                    {
                        Title = unauthorized.Message.IsNullOrEmpty() ? "Unauthorized" : unauthorized.Message,
                        Status = (int)statusCode,
                        Type = nameof(NotAuthorizedException),
                        Detail = unauthorized.InnerException?.Message ?? "Authentication required.",
                    };
                    _logger.LogWarning(ex, "Unauthorized access attempt. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case ServiceException serviceException:
                    statusCode = HttpStatusCode.InternalServerError;
                    problem = new CustomProblemDetails
                    {
                        Title = "Service Error",
                        Status = (int)statusCode,
                        Type = nameof(ServiceException),
                        Detail = _environment.IsDevelopment() 
                            ? serviceException.Message 
                            : "A service error occurred. Please try again later.",
                    };
                    
                    if (_environment.IsDevelopment() && !string.IsNullOrEmpty(serviceException.ServiceName))
                    {
                        problem.Extensions["serviceName"] = serviceException.ServiceName;
                        problem.Extensions["operationName"] = serviceException.OperationName;
                    }
                    
                    _logger.LogError(ex, "Service exception occurred in {ServiceName}.{OperationName}. CorrelationId: {CorrelationId}", 
                        serviceException.ServiceName, serviceException.OperationName, correlationId);
                    break;

                case SecurityException securityException:
                    statusCode = HttpStatusCode.Forbidden;
                    problem = new CustomProblemDetails
                    {
                        Title = "Security Error",
                        Status = (int)statusCode,
                        Type = nameof(SecurityException),
                        Detail = "A security error occurred.",
                    };
                    _logger.LogError(ex, "Security exception occurred. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case TimeoutException timeoutException:
                    statusCode = HttpStatusCode.RequestTimeout;
                    problem = new CustomProblemDetails
                    {
                        Title = "Request Timeout",
                        Status = (int)statusCode,
                        Type = nameof(TimeoutException),
                        Detail = "The request timed out. Please try again.",
                    };
                    _logger.LogWarning(ex, "Request timeout occurred. CorrelationId: {CorrelationId}", correlationId);
                    break;

                case OperationCanceledException operationCanceledException when operationCanceledException.CancellationToken.IsCancellationRequested:
                    statusCode = HttpStatusCode.BadRequest;
                    problem = new CustomProblemDetails
                    {
                        Title = "Request Cancelled",
                        Status = (int)statusCode,
                        Type = nameof(OperationCanceledException),
                        Detail = "The request was cancelled.",
                    };
                    _logger.LogInformation("Request was cancelled. CorrelationId: {CorrelationId}", correlationId);
                    break;

                default:
                    statusCode = HttpStatusCode.InternalServerError;
                    problem = new CustomProblemDetails
                    {
                        Title = _environment.IsDevelopment() ? ex.Message : "An internal server error occurred",
                        Status = (int)statusCode,
                        Type = nameof(HttpStatusCode.InternalServerError),
                        Detail = _environment.IsDevelopment() 
                            ? ex.InnerException?.Message ?? ex.StackTrace 
                            : "An unexpected error occurred. Please contact support if the problem persists.",
                    };
                    _logger.LogError(ex, "Unhandled exception occurred. CorrelationId: {CorrelationId}", correlationId);
                    break;
            }

            // Add correlation ID to the response
            problem.Extensions["correlationId"] = correlationId;
            problem.Extensions["timestamp"] = DateTime.UtcNow;

            // Ensure response hasn't been started
            if (!httpContext.Response.HasStarted)
            {
                httpContext.Response.StatusCode = (int)statusCode;
                httpContext.Response.ContentType = "application/json";

                var jsonSettings = new JsonSerializerSettings
                {
                    NullValueHandling = NullValueHandling.Ignore,
                    Formatting = _environment.IsDevelopment() ? Formatting.Indented : Formatting.None
                };

                var response = JsonConvert.SerializeObject(problem, jsonSettings);
                await httpContext.Response.WriteAsync(response);
            }
        }
    }

    // Extension method for cleaner string checks
    public static class StringExtensions
    {
        public static bool IsNullOrEmpty(this string? str) => string.IsNullOrEmpty(str);
    }
}
