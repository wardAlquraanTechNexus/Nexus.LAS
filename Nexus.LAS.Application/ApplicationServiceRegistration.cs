using FluentValidation;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Application.Behaviors;
using Nexus.LAS.Application.UseCases;

namespace Nexus.LAS.Application
{
    public static class ApplicationServiceRegistration
    {
        public static IServiceCollection AddApplicationServicesDI(this IServiceCollection services)
        {
            var applicationAssembly = typeof(ApplicationServiceRegistration).Assembly;

            services.AddAutoMapper(applicationAssembly);

            services.AddMediatR(cfg => cfg.RegisterServicesFromAssemblies(AppDomain.CurrentDomain.GetAssemblies()));
            
            // Add FluentValidation
            services.AddValidatorsFromAssembly(applicationAssembly);
            
            // Add validation behavior to MediatR pipeline
            services.AddTransient(typeof(IPipelineBehavior<,>), typeof(ValidationBehavior<,>));
            
            services.AddScoped<IUserContext, UserContext>();

            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

            return services;
        }
    }
}
