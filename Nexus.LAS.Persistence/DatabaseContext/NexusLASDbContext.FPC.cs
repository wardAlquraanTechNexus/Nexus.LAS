using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.FPC;
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
        public DbSet<FPCsOD> FPCsODs { get; set; }
        public DbSet<FPCsODsAction> FPCsODsActions { get; set; }

        protected void OnFPCModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FPC>()
                          .HasKey(f => new { f.FpcIdc, f.FpcIdn });

            modelBuilder.Entity<FPCsOD>()
                .HasKey(e => new { e.FPCsOdIdc, e.FPCsOdIdn });
            modelBuilder.Entity<FPCsODsAction>()
                .HasKey(e => new { e.FPCsOdsActionIdc, e.FPCsOdsActionIdn });

        }


    }
}
