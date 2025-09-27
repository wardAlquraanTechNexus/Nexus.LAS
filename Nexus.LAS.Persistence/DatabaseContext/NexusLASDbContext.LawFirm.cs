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
        public DbSet<LawFirmAffiliate> LawFirmsAffiliates { get; set; }
        public DbSet<LawFirmBranch> LawFirmsBranchs { get; set; }
        public DbSet<LawFirmExpertise> LawFirmsExpertises { get; set; }
        public DbSet<LawFirmPerson> LawFirmsPersons { get; set; }
        public DbSet<LawFirmCounsel> LawFirmCounsels { get; set; }

        protected void OnLawFirmModelCreating(ModelBuilder modelBuilder)
        {

        }
    }
}
