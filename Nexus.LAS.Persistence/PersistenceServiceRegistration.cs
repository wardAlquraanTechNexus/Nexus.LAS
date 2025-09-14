using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence
{
    public static class PersistenceServiceRegistration
    {
        public static IServiceCollection AddPersistenceServicesDI(this IServiceCollection services,
        IConfiguration configuration)
        {
            services.RegisterServices();

            services.RegisterRepositories();


            var connectionStr = configuration.GetConnectionString("NexusLASConnectionString");
            services.AddDbContext<NexusLASDbContext>(options =>
            {
                options.UseSqlServer(connectionStr ?? throw new Exception("NexusLASConnectionString is not set"),
                        sqlOptions => sqlOptions.MigrationsAssembly("Nexus.LAS.Persistence"))
                       .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Information);
            });


  


            return services;
        }
    }
}
