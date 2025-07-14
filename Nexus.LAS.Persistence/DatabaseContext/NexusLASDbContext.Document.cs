using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.DocumentEntities;
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

        public DbSet<DocumentReletedRegister> DocumentReletedRegisters { get; set; }
        public DbSet<DocumentTracking> DocumentTrackings { get; set; }
        public DbSet<DocumentTrackingsAction> DocumentTrackingsActions { get; set; }
        public DbSet<Document> Documents { get; set; }


        protected void OnDocumentModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Document>()
                .HasKey(d => new { d.DocumentIdc, d.Id });
            modelBuilder.Entity<DocumentReletedRegister>()
                .HasKey(d => new { d.DocumentIdc, d.Id, d.RegistersIdc, d.RegistersIdn, d.Owner });


        }

    }
}
