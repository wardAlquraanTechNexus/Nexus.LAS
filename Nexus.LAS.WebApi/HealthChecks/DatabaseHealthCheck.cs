using Microsoft.Extensions.Diagnostics.HealthChecks;

namespace Nexus.LAS.WebApi.HealthChecks
{
    public class DatabaseHealthCheck : IHealthCheck
    {
        private readonly IServiceProvider _serviceProvider;

        public DatabaseHealthCheck(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        public async Task<HealthCheckResult> CheckHealthAsync(HealthCheckContext context, CancellationToken cancellationToken = default)
        {
            try
            {
                using var scope = _serviceProvider.CreateScope();
                var dbContext = scope.ServiceProvider.GetRequiredService<Nexus.LAS.Persistence.DatabaseContext.NexusLASDbContext>();
                
                // Simple database connectivity check
                await dbContext.Database.CanConnectAsync(cancellationToken);
                
                return HealthCheckResult.Healthy("Database connection is healthy");
            }
            catch (Exception ex)
            {
                return HealthCheckResult.Unhealthy("Database connection failed", ex);
            }
        }
    }
}