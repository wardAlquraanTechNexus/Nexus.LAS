using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Repositories;
using Nexus.LAS.Identity.IdentityDbContext;
using Nexus.LAS.Identity.Services;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence
{
    public static class PersistenceServiceRegistration
    {
        public static IServiceCollection AddPersistenceServicesDI(this IServiceCollection services,
        IConfiguration configuration)
        {

            services.AddScoped<IUserService, UserService>();


            services.AddScoped<ICountryRepo, CountryRepo>();

            var connectionStr = configuration.GetConnectionString("NexusLASConnectionString");
            services.AddDbContext<NexusLASDbContext>(options => {
                options.UseSqlServer(connectionStr ?? throw new Exception("NexusLASConnectionString is not set"),
                        sqlOptions => sqlOptions.MigrationsAssembly("Nexus.LAS.Persistence"))
                       .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Information);
            });




            return services;
        }
    }
}
