using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<LawFirm> LawFirms { get; set; }
        public DbSet<LawFirmsAffiliate> LawFirmsAffiliates { get; set; }
        public DbSet<LawFirmsBranch> LawFirmsBranchs { get; set; }
        public DbSet<LawFirmsExpertise> LawFirmsExpertises { get; set; }
        public DbSet<LawFirmsPerson> LawFirmsPersons { get; set; }

        protected void OnLawFirmModelCreating(ModelBuilder modelBuilder)
        {

        }
    }
}
