using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<Person> People { get; set; }
        public DbSet<PersonsAddress> PersonsAddresses { get; set; }
        public DbSet<PersonsCapacity> PersonsCapacities { get; set; }
        public DbSet<PersonsEmail> PersonsEmails { get; set; }
        public DbSet<PersonsIDDetail> PersonsIDDetails { get; set; }
        public DbSet<PersonsOtherDocument> PersonsOtherDocuments { get; set; }
        public DbSet<PersonsPhone> PersonsPhones { get; set; }

        protected void OnPersonModelCreating(ModelBuilder modelBuilder)
        {
            
            modelBuilder.Entity<PersonsCapacity>()
                .HasKey(e => new { e.PersonsCapacityIdc, e.Id});

            
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(NexusLASDbContext).Assembly);

            //modelBuilder.Entity<Person>(entity =>
            //{
            //    entity.Property(e => e.Nationality)
            //            .HasConversion(
            //                v => Converters.SerializeList(v),
            //                v => Converters.DeserializeList(v)
            //            )
            //            .HasColumnType("nvarchar(max)");
            //});

        }
    }
}
