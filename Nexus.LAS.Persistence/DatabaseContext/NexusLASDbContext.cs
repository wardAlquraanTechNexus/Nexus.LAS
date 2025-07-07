using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Domain.Entities.FPC;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext: DbContext
    {
        public NexusLASDbContext(DbContextOptions<NexusLASDbContext> optins) : base(optins) { }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Menu> Menus { get; set; }
        public DbSet<GroupMenu> GroupsMenus { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<Currency> Currencies { get; set; }
        public DbSet<DynamicList> DynamicLists { get; set; }

        public DbSet<Number> Numbers { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //this.OnCompanyModelCreating(modelBuilder);
            //this.OnDocumentModelCreating(modelBuilder);
            //this.OnFPCModelCreating(modelBuilder);
            //this.OnPersonModelCreating(modelBuilder);
            //this.OnPropertyModelCreating(modelBuilder);
            //this.OnRegisterModelCreating(modelBuilder);
            //this.OnTransactionModelCreating(modelBuilder);
            //this.OnLawFirmModelCreating(modelBuilder);
            base.OnModelCreating(modelBuilder);


            modelBuilder.Entity<GroupMenu>()
       .HasKey(gm => new { gm.GroupId, gm.MenuId });

            modelBuilder.Entity<DynamicList>()
                .HasKey(gm => new { gm.DynamicListIdC, gm.DynamicListIdN });
        }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
          


            return base.SaveChangesAsync(cancellationToken);
        }
    }
}
