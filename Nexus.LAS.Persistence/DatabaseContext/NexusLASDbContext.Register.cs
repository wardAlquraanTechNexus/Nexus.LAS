using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<RegistersNote> RegistersNotes { get; set; }
        public DbSet<RegisterFile> RegisterFiles { get; set; }
        public DbSet<RegistersCode> RegistersCodes { get; set; }

        protected void OnRegisterModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<RegistersNote>()
               .HasKey(e => new { e.RegistersNoteIdc, e.RegistersNoteIdn });

        }
    }
}
