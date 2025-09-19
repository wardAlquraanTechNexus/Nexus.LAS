using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<Property> Properties { get; set; }
        public DbSet<PropertyOwner> PropertyOwners { get; set; }
        public DbSet<PropertyStatus> PropertiesStatuses { get; set; }
        public DbSet<PropertyDocument> PropertyDocuments { get; set; }
        public DbSet<PropertyLink> PropertyLinks { get; set; }


        protected void OnPropertyModelCreating(ModelBuilder modelBuilder)
        {

          

        }
    }
}
