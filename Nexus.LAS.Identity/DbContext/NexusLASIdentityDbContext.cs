
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities;


namespace Nexus.LAS.Identity.DbContext
{
    public class NexusLASIdentityDbContext : IdentityDbContext<ApplicationUser>
    {
        public NexusLASIdentityDbContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            builder.ApplyConfigurationsFromAssembly(typeof(NexusLASIdentityDbContext).Assembly);
        }
    }
}
