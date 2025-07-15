using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Domain.Entities.UserGroupEntities;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext : DbContext
    {
        private readonly IUserIdentityService _userIdentityService;
        public NexusLASDbContext(DbContextOptions<NexusLASDbContext> optins , IUserIdentityService userIdentityService) : base(optins) 
        {
            _userIdentityService = userIdentityService;
        
        }
        public DbSet<Group> Groups { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<UserGroup> UserGroups { get; set; }
        public DbSet<Menu> Menus { get; set; }
        public DbSet<GroupMenu> GroupsMenus { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<Currency> Currencies { get; set; }
        public DbSet<DynamicList> DynamicLists { get; set; }

        public DbSet<Number> Numbers { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            this.OnCompanyModelCreating(modelBuilder);
            this.OnDocumentModelCreating(modelBuilder);
            this.OnFPCModelCreating(modelBuilder);
            this.OnPersonModelCreating(modelBuilder);
            this.OnPropertyModelCreating(modelBuilder);
            this.OnRegisterModelCreating(modelBuilder);
            this.OnTransactionModelCreating(modelBuilder);
            this.OnLawFirmModelCreating(modelBuilder);
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<UserGroup>()
             .HasKey(gm => new { gm.UserId, gm.GroupId });

            modelBuilder.Entity<GroupMenu>()
            .HasKey(gm => new { gm.GroupId, gm.MenuId });

            modelBuilder.Entity<DynamicList>()
                .HasKey(gm => new { gm.DynamicListIdC, gm.Id });
        }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            SetCreationInfo();
            SetModificationInfo();
            return base.SaveChangesAsync(cancellationToken);
        }


        private void SetCreationInfo()
        {
            var entries = ChangeTracker.Entries<BaseEntity>()
                .Where(e => e.State == EntityState.Added);

            foreach (var entry in entries)
            {
                entry.Entity.CreationDate = DateTime.UtcNow;
                entry.Entity.CreatedBy =
                    string.IsNullOrEmpty(entry.Entity.CreatedBy) ?
                    _userIdentityService.UserId :
                    entry.Entity.CreatedBy;
            }
        }
        private void SetModificationInfo()
        {
            var entries = ChangeTracker.Entries<BaseEntity>()
                .Where(e => e.State == EntityState.Modified);

            foreach (var entry in entries)
            {
                entry.Entity.ModificationDate = DateTime.UtcNow;
                entry.Entity.ModefiedBy = _userIdentityService.UserId; // You can customize this
            }
        }
        
    }
}
