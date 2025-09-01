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
        public DbSet<CompanyAccountSignatory> CompaniesAccountSignatories { get; set; }
        public DbSet<CompanyActivity> CompaniesActivities { get; set; }
        public DbSet<CompanyAddress> CompaniesAddresses { get; set; }
        public DbSet<CompaniesAuthorizedSignatory> CompaniesAuthorizedSignatories { get; set; }
        public DbSet<CompanyBankAccount> CompaniesBankAccounts { get; set; }
        public DbSet<CompanyBoard> CompaniesBoards { get; set; }
        public DbSet<CompanyBoardMember> CompaniesBoardMembers { get; set; }
        public DbSet<CompanyCapital> CompaniesCapitals { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<CompanyChamberOfCommerce> CompaniesChamberOfCommerce { get; set; }
        public DbSet<CompanyContract> CompaniesContracts { get; set; }
        public DbSet<CompanyEmail> CompaniesEmails { get; set; }
        public DbSet<CompaniesLeaseContractRegister> CompaniesLeaseContractRegisters { get; set; }
        public DbSet<CompaniesLeaseContract> CompaniesLeaseContracts { get; set; }
        public DbSet<CompanyLicense> CompaniesLicenses { get; set; }
        public DbSet<CompaniesOtherContract> CompaniesOtherContracts { get; set; }
        public DbSet<CompanyPersonInCharge> CompaniesPersonInCharges { get; set; }
        public DbSet<CompanyPhone> CompaniesPhones { get; set; }
        public DbSet<CompanyShareHolder> CompaniesShareHolders { get; set; }
        public DbSet<CompaniesShareHoldersGroup> CompaniesShareHoldersGroups { get; set; }

        protected void OnCompanyModelCreating(ModelBuilder modelBuilder)
        {
           


        }
    }
}
