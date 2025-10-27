using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.DocumentEntities;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {

        public DbSet<DocumentTracking> DocumentTrackings { get; set; }
        public DbSet<DocumentTrackingAction> DocumentTrackingsActions { get; set; }

        protected void OnDocumentModelCreating(ModelBuilder modelBuilder)
        {
            


        }

    }
}
