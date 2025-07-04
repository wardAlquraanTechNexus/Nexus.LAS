using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Application.Contracts.Email;
using Nexus.LAS.Application.Contracts.Logging;
using Nexus.LAS.Application.Models.Email;
using Nexus.LAS.Application.Models.File;
using Nexus.LAS.Infrastructure.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Infrastructure
{
    public static class InfrastructureServiceRegistration
    {
        public static IServiceCollection AddInfrastructureServiceDI(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<EmailSettings>(configuration.GetSection("EmailSettings") ?? throw new Exception("EmailSettings is not set"));

            services.AddTransient<IEmailService, EmailService>();

            services.Configure<FileStorageSettings>(configuration.GetSection("FileStorageSettings") ?? throw new Exception("FileStorageSettings is not set"));

            services.AddScoped(typeof(IAppLogger<>), typeof(LoggerAdapter<>));

            return services;
        }
    }
}
