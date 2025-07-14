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
            modelBuilder.Entity<RegistersCode>(entity =>
            {
                entity.Ignore(e => e.Id);               // Ignore Id completely
                entity.HasKey(e => e.Code);             // Use Code as the primary key
            });

            modelBuilder.Entity<RegistersNote>()
               .HasKey(e => new { e.RegistersNoteIdc, e.Id });

        }
    }
}
