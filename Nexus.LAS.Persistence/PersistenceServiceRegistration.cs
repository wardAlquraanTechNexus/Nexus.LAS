using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Persistence.DatabaseContext;
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
            services.AddDbContext<NexusLASDbContext>(options => {
                options.UseSqlServer(configuration.GetConnectionString("NexusLASConnectionString") ?? throw new Exception("NexusLASConnectionString is not set"));
            });

            return services;
        }
    }
}
