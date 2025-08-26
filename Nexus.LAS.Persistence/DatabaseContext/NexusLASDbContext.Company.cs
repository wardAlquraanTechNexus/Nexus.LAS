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
        public DbSet<CompanyActivity> CompaniesActivities { get; set; }
        public DbSet<CompaniesAddress> CompaniesAddresses { get; set; }
        public DbSet<CompaniesAuthorizedSignatory> CompaniesAuthorizedSignatories { get; set; }
        public DbSet<CompaniesBankAccount> CompaniesBankAccounts { get; set; }
        public DbSet<CompaniesBoard> CompaniesBoards { get; set; }
        public DbSet<CompaniesBoardMember> CompaniesBoardMembers { get; set; }
        public DbSet<CompanyCapital> CompaniesCapitals { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<CompanyChamberOfCommerce> CompaniesChamberOfCommerce { get; set; }
        public DbSet<CompaniesContract> CompaniesContracts { get; set; }
        public DbSet<CompaniesEmail> CompaniesEmails { get; set; }
        public DbSet<CompaniesLeaseContractRegister> CompaniesLeaseContractRegisters { get; set; }
        public DbSet<CompaniesLeaseContract> CompaniesLeaseContracts { get; set; }
        public DbSet<CompanyLicense> CompaniesLicenses { get; set; }
        public DbSet<CompaniesOtherContract> CompaniesOtherContracts { get; set; }
        public DbSet<CompanyPersonInCharge> CompaniesPersonInCharges { get; set; }
        public DbSet<CompaniesPhone> CompaniesPhones { get; set; }
        public DbSet<CompanyShareHolder> CompaniesShareHolders { get; set; }
        public DbSet<CompaniesShareHoldersGroup> CompaniesShareHoldersGroups { get; set; }

        protected void OnCompanyModelCreating(ModelBuilder modelBuilder)
        {
           


        }
    }
}
