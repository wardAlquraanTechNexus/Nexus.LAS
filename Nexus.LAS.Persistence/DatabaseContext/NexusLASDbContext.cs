using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System.Linq.Expressions;

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



            foreach (var entityType in modelBuilder.Model.GetEntityTypes())
            {
                // Check if entity inherits from BaseEntity
                if (typeof(BaseEntity).IsAssignableFrom(entityType.ClrType))
                {
                    var parameter = Expression.Parameter(entityType.ClrType, "e");
                    var isDeletedProp = Expression.Property(parameter, nameof(BaseEntity.IsDeleted));
                    var filter = Expression.Lambda(
                        Expression.Equal(isDeletedProp, Expression.Constant(false)),
                        parameter
                    );

                    modelBuilder.Entity(entityType.ClrType).HasQueryFilter(filter);
                }
            }
        }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            SetCreationInfo();
            SetModificationInfo();
            SetSoftDeleteInfo();
            return base.SaveChangesAsync(cancellationToken);
        }


        private void SetCreationInfo()
        {
            var entries = ChangeTracker.Entries<BaseEntity>()
                .Where(e => e.State == EntityState.Added);

            foreach (var entry in entries)
            {
                entry.Entity.CreatedAt = DateTime.UtcNow;
                entry.Entity.CreatedBy =
                    string.IsNullOrEmpty(entry.Entity.CreatedBy) ?
                    _userIdentityService.Username :
                    entry.Entity.CreatedBy;
            }
        }
        private void SetModificationInfo()
        {
            var entries = ChangeTracker.Entries<BaseEntity>()
                .Where(e => e.State == EntityState.Modified);

            foreach (var entry in entries)
            {
                entry.Entity.ModifiedAt = DateTime.UtcNow;
                entry.Entity.ModifiedBy = _userIdentityService.Username;
                entry.Property(nameof(BaseEntity.CreatedAt)).IsModified = false;
                entry.Property(nameof(BaseEntity.CreatedBy)).IsModified = false;
            }
        }

        private void SetSoftDeleteInfo()
        {
            var entries = ChangeTracker.Entries<BaseEntity>()
                .Where(e => e.State == EntityState.Modified);

            foreach (var entry in entries)
            {
                // Check if IsDeleted was changed to true
                var isDeletedCurrent = (bool)entry.CurrentValues["IsDeleted"];
                var isDeletedOriginal = (bool)entry.OriginalValues["IsDeleted"];

                if (!isDeletedOriginal && isDeletedCurrent)
                {
                    entry.Entity.DeletedAt = DateTime.UtcNow;
                    entry.Entity.DeletedBy = _userIdentityService.Username;
                }
                else if (isDeletedOriginal && !isDeletedCurrent)
                {
                    // Optional: If you want to clear deleted info if undeleted
                    entry.Entity.DeletedAt = null;
                    entry.Entity.DeletedBy = null;
                }
            }
        }

    }
}
