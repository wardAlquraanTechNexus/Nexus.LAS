using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities;
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

        public DbSet<FPC> FPCs { get; set; }
        public DbSet<FPCOD> FPCsODs { get; set; }
        public DbSet<FPCODAction> FPCsODsActions { get; set; }

        protected void OnFPCModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FPC>()
                          .HasKey(f => new { f.FpcIdc, f.Id });

            modelBuilder.Entity<FPCOD>()
                .HasKey(e => new { e.FPCOdIdc, e.Id });
            modelBuilder.Entity<FPCODAction>()
                .HasKey(e => new { e.FPCsOdsActionIdc, e.Id });

        }


    }
}
