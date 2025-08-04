using Nexus.LAS.WebApi.Middlewares;

namespace Nexus.LAS.WebApi.Extensions
{
    public static class ApplicationBuilderExtensions
    {
        /// <summary>
        /// Adds global exception handling middleware to the application pipeline
        /// </summary>
        /// <param name="app">The application builder</param>
        /// <returns>The application builder for chaining</returns>
        public static IApplicationBuilder UseGlobalExceptionHandling(this IApplicationBuilder app)
        {
            return app.UseMiddleware<ExceptionMiddleware>();
        }

        /// <summary>
        /// Adds request time logging middleware to the application pipeline
        /// </summary>
        /// <param name="app">The application builder</param>
        /// <returns>The application builder for chaining</returns>
        public static IApplicationBuilder UseRequestTimeLogging(this IApplicationBuilder app)
        {
            return app.UseMiddleware<RequestTimeLoggingMiddleware>();
        }

        /// <summary>
        /// Adds custom authentication check middleware to the application pipeline
        /// </summary>
        /// <param name="app">The application builder</param>
        /// <returns>The application builder for chaining</returns>
        public static IApplicationBuilder UseCustomAuthenticationCheck(this IApplicationBuilder app)
        {
            return app.UseMiddleware<CheckRequestMiddleware>();
        }
    }
}