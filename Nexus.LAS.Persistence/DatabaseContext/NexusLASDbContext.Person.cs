//using Microsoft.EntityFrameworkCore;
//using Nexus.LAS.Domain.Entities.Lookup;
//using Nexus.LAS.Domain.Entities.PersonEntities;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace Nexus.LAS.Persistence.DatabaseContext
//{
//    public partial class NexusLASDbContext
//    {
//        public DbSet<Person> People { get; set; }
//        public DbSet<PersonsAddress> PersonsAddresses { get; set; }
//        public DbSet<PersonsCapacity> PersonsCapacities { get; set; }
//        public DbSet<PersonsEmail> PersonsEmails { get; set; }
//        public DbSet<PersonsIDDetail> PersonsIDDetails { get; set; }
//        public DbSet<PersonsOtherDocument> PersonsOtherDocuments { get; set; }
//        public DbSet<PersonsPhone> PersonsPhones { get; set; }

//        protected void OnPersonModelCreating(ModelBuilder modelBuilder)
//        {
//            modelBuilder.Entity<PersonsAddress>()
//                .HasKey(e => new { e.PersonsAddressIdc, e.PersonsAddressIdn });
//            modelBuilder.Entity<PersonsCapacity>()
//                .HasKey(e => new { e.PersonsCapacityIdc, e.PersonsCapacityIdn });

//            modelBuilder.Entity<PersonsEmail>()
//               .HasKey(e => new { e.PersonsEmailIdc, e.PersonsEmailIdn });
//            modelBuilder.Entity<PersonsIDDetail>()
//                .HasKey(e => new { e.PersonsIDDetailIdc, e.PersonsIDDetailIdn });

//            modelBuilder.Entity<PersonsOtherDocument>()
//               .HasKey(e => new { e.PersonsOtherDocumentIdc, e.PersonsOtherDocumentIdn });
//            modelBuilder.ApplyConfigurationsFromAssembly(typeof(NexusLASDbContext).Assembly);

//            modelBuilder.Entity<PersonsPhone>()
//               .HasKey(e => new { e.PersonsPhoneIdc, e.PersonsPhoneIdn });

//        }
//    }
//}
