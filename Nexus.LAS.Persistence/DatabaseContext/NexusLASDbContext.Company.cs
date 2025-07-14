using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
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
        public DbSet<CompaniesAccountSignatory> CompaniesAccountSignatories { get; set; }
        public DbSet<CompaniesActivities> CompaniesActivities { get; set; }
        public DbSet<CompaniesAddress> CompaniesAddresses { get; set; }
        public DbSet<CompaniesAuthorizedSignatory> CompaniesAuthorizedSignatories { get; set; }
        public DbSet<CompaniesBankAccount> CompaniesBankAccounts { get; set; }
        public DbSet<CompaniesBoard> CompaniesBoards { get; set; }
        public DbSet<CompaniesBoardMember> CompaniesBoardMembers { get; set; }
        public DbSet<CompaniesCapital> CompaniesCapitals { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<CompaniesChamberOfCommerce> CompaniesChamberOfCommerce { get; set; }
        public DbSet<CompaniesContract> CompaniesContracts { get; set; }
        public DbSet<CompaniesEmail> CompaniesEmails { get; set; }
        public DbSet<CompaniesLeaseContractRegister> CompaniesLeaseContractRegisters { get; set; }
        public DbSet<CompaniesLeaseContract> CompaniesLeaseContracts { get; set; }
        public DbSet<CompaniesLicense> CompaniesLicenses { get; set; }
        public DbSet<CompaniesOtherContract> CompaniesOtherContracts { get; set; }
        public DbSet<CompaniesPersonInCharge> CompaniesPersonInCharges { get; set; }
        public DbSet<CompaniesPhone> CompaniesPhones { get; set; }
        public DbSet<CompaniesShareHolder> CompaniesShareHolders { get; set; }
        public DbSet<CompaniesShareHoldersGroup> CompaniesShareHoldersGroups { get; set; }

        protected void OnCompanyModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CompaniesActivities>()
             .HasKey(ca => new { ca.CompaniesActivityIdc, ca.Id });

            modelBuilder.Entity<CompaniesAddress>()
                .HasKey(ca => new { ca.CompaniesAddressIdc, ca.Id});

            modelBuilder.Entity<CompaniesAuthorizedSignatory>()
                .HasKey(c => new { c.CompaniesAuthorizedSignatoryIdc, c.Id });

            modelBuilder.Entity<CompaniesBankAccount>()
                .HasKey(c => new { c.CompaniesBankAccountIdc, c.Id });

            modelBuilder.Entity<CompaniesBoardMember>()
                .HasKey(c => new { c.CompaniesBoardMemberIdc, c.Id });

            modelBuilder.Entity<CompaniesBoard>()
                .HasKey(cb => new { cb.CompaniesBoardIdc, cb.Id });

            modelBuilder.Entity<CompaniesCapital>()
                .HasKey(cc => new { cc.CompaniesCapitalIdc, cc.Id });

            modelBuilder.Entity<CompaniesChamberOfCommerce>()
                 .HasKey(c => new { c.CompaniesChamberOfCommerceIdc, c.Id });

            modelBuilder.Entity<CompaniesContract>()
                .HasKey(c => new { c.CompaniesContractIdc, c.Id });

            modelBuilder.Entity<CompaniesEmail>()
                .HasKey(c => new { c.CompaniesEmailIdc, c.Id });

            modelBuilder.Entity<CompaniesLeaseContractRegister>()
                .HasKey(c => new { c.Id, c.LeaseRegistersIdc });

            modelBuilder.Entity<CompaniesLeaseContract>()
                .HasKey(c => new { c.CompaniesLeaseContractIdc, c.Id });

            modelBuilder.Entity<CompaniesLicense>()
                .HasKey(c => new { c.CompaniesLicenseIdc, c.Id });

            modelBuilder.Entity<CompaniesOtherContract>()
                .HasKey(c => new { c.CompaniesOtherContractIdc, c.Id });

            modelBuilder.Entity<CompaniesPersonInCharge>()
                .HasKey(c => new { c.CompaniesPersonInChargeIdc, c.Id });

            modelBuilder.Entity<CompaniesPhone>()
                .HasKey(c => new { c.CompaniesPhoneIdc, c.Id });

            modelBuilder.Entity<CompaniesShareHolder>()
                .HasKey(c => new { c.CompaniesShareHolderIdc, c.Id });

            modelBuilder.Entity<CompaniesShareHoldersGroup>()
                .HasKey(c => new { c.CompaniesShareHoldersGroupIdc, c.Id });


        }
    }
}
