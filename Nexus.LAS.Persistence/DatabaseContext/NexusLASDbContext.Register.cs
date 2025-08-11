using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.RegisterEntities;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<RegistersNote> RegistersNotes { get; set; }
        public DbSet<RegisterFile> RegisterFiles { get; set; }
        public DbSet<RegistersCode> RegistersCodes { get; set; }

        protected void OnRegisterModelCreating(ModelBuilder modelBuilder)
        {
            // Configure RegistersCode
            modelBuilder.Entity<RegistersCode>(entity =>
            {
                entity.Ignore(e => e.Id);
                entity.HasKey(e => e.Code);
                entity.Property(e => e.Code)
                    .IsRequired()
                    .HasMaxLength(255);
            });

            // Configure RegistersNote composite key
            modelBuilder.Entity<RegistersNote>(entity =>
            {
                entity.HasKey(e => new { e.RegistersNoteIdc, e.Id });
                
                entity.Property(e => e.RegistersNoteIdc)
                    .IsRequired()
                    .HasMaxLength(50);
                    
                entity.Property(e => e.RegistersIdc)
                    .IsRequired()
                    .HasMaxLength(50);
                    
                entity.Property(e => e.RegistersNotesText)
                    .IsRequired();
            });

            // Configure RegisterFile
            modelBuilder.Entity<RegisterFile>(entity =>
            {
                entity.Property(e => e.RegistersIdc)
                    .IsRequired()
                    .HasMaxLength(50);
                    
                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(255);
            });
        }
    }
}
