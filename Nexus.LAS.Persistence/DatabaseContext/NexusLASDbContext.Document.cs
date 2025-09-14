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
        public DbSet<DocumentTrackingAction> DocumentTrackingsActions { get; set; }
        public DbSet<Document> Documents { get; set; }


        protected void OnDocumentModelCreating(ModelBuilder modelBuilder)
        {
            


        }

    }
}
