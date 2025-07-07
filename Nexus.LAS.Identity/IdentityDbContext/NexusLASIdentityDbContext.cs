
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System.Reflection.Emit;


namespace Nexus.LAS.Identity.IdentityDbContext
{
    public class NexusLASIdentityDbContext :  DbContext
    {
        public NexusLASIdentityDbContext(DbContextOptions options) : base(options)
        {
        }
        public DbSet<User> Users { get; set; }
        public DbSet<UserGroup> UserGroups { get; set; }
        
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<UserGroup>()
           .HasKey(ug => new { ug.UserId, ug.GroupId });

            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(NexusLASIdentityDbContext).Assembly);
        }
    }
}
