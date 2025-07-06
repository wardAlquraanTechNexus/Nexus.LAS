using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.Lookup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<Country> Countries { get; set; }
        public DbSet<Currency> Currencies { get; set; }
        public DbSet<DynamicList> DynamicLists { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Menu> Menus { get; set; }
        public DbSet<GroupMenu> GroupsMenus { get; set; }

        protected void OnLookupModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<GroupMenu>()
                .HasKey(gm => new { gm.GroupId, gm.MenuId });

            modelBuilder.Entity<DynamicList>()
                .HasKey(gm => new { gm.DynamicListIDC, gm.DynamicListIDN });

        }
    }
}
