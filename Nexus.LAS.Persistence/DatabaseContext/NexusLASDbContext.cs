using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext(DbContextOptions<NexusLASDbContext> optins , IUserService _userService) : DbContext
    {
        #region Company
        public DbSet<CompaniesAccountSignatory> CompaniesAccountSignatories { get; set; }
        public DbSet<CompaniesActivities> CompaniesActivities { get; set; }
        public DbSet<CompaniesAddress> CompaniesAddresses { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<CompaniesAuthorizedSignatory> CompaniesAuthorizedSignatories { get; set; }
        public DbSet<CompaniesBankAccount> CompaniesBankAccounts { get; set; }
        public DbSet<CompaniesBoardMember> CompaniesBoardMembers { get; set; }
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
        #endregion


        public DbSet<User> Users { get; set; }
        public DbSet<DocumentReletedRegister> DocumentReletedRegisters { get; set; }
        public DbSet<DocumentTracking> DocumentTrackings { get; set; }
        public DbSet<DocumentTrackingsAction> DocumentTrackingsActions { get; set; }
        public DbSet<Document> Documents { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            this.OnLookupModelCreating(modelBuilder);
            base.OnModelCreating(modelBuilder);

            #region Company
            modelBuilder.Entity<CompaniesActivities>()
             .HasKey(ca => new { ca.CompaniesActivityIdc, ca.CompaniesActivityIdn });

            modelBuilder.Entity<CompaniesAddress>()
                .HasKey(ca => new { ca.CompaniesAddressIdc, ca.CompaniesAddressIdn });

            modelBuilder.Entity<CompaniesAuthorizedSignatory>()
                .HasKey(c => new { c.CompaniesAuthorizedSignatoryIdc, c.CompaniesAuthorizedSignatoryIdn });

            modelBuilder.Entity<CompaniesBankAccount>()
                .HasKey(c => new { c.CompaniesBankAccountIdc, c.CompaniesBankAccountIdn });

            modelBuilder.Entity<CompaniesBoardMember>()
                .HasKey(c => new { c.CompaniesBoardMemberIdc, c.CompaniesBoardMemberIdn });

            modelBuilder.Entity<CompaniesBoard>()
                .HasKey(cb => new { cb.CompaniesBoardIdc, cb.CompaniesBoardIdn });

            modelBuilder.Entity<CompaniesCapital>()
                .HasKey(cc => new { cc.CompaniesCapitalIdc, cc.CompaniesCapitalIdn });

            modelBuilder.Entity<CompaniesChamberOfCommerce>()
                 .HasKey(c => new { c.CompaniesChamberOfCommerceIdc, c.CompaniesChamberOfCommerceIdn });

            modelBuilder.Entity<CompaniesContract>()
                .HasKey(c => new { c.CompaniesContractIdc, c.CompaniesContractIdn });

            modelBuilder.Entity<CompaniesEmail>()
                .HasKey(c => new { c.CompaniesEmailIdc, c.CompaniesEmailIdn });

            modelBuilder.Entity<CompaniesLeaseContractRegister>()
                .HasKey(c => new { c.CompaniesLeaseContractsIdn, c.LeaseRegistersIdc });

            modelBuilder.Entity<CompaniesLeaseContract>()
                .HasKey(c => new { c.CompaniesLeaseContractIdc, c.CompaniesLeaseContractIdn });

            modelBuilder.Entity<CompaniesLicense>()
                .HasKey(c => new { c.CompaniesLicenseIdc, c.CompaniesLicenseIdn });

            modelBuilder.Entity<CompaniesOtherContract>()
                .HasKey(c => new { c.CompaniesOtherContractIdc, c.CompaniesOtherContractIdn });

            modelBuilder.Entity<CompaniesPersonInCharge>()
                .HasKey(c => new { c.CompaniesPersonInChargeIdc, c.CompaniesPersonInChargeIdn });

            modelBuilder.Entity<CompaniesPhone>()
                .HasKey(c => new { c.CompaniesPhoneIdc, c.CompaniesPhoneIdn });

            modelBuilder.Entity<CompaniesShareHolder>()
                .HasKey(c => new { c.CompaniesShareHolderIdc, c.CompaniesShareHolderIdn });

            modelBuilder.Entity<CompaniesShareHoldersGroup>()
                .HasKey(c => new { c.CompaniesShareHoldersGroupIdc, c.CompaniesShareHoldersGroupIdn });
            #endregion

            modelBuilder.Entity<Document>()
                .HasKey(d => new { d.DocumentIdc, d.DocumentIdn });
            modelBuilder.Entity<DocumentReletedRegister>()
                .HasKey(d => new { d.DocumentIdc, d.DocumentIdn, d.RegistersIdc, d.RegistersIdn, d.Owner });


            modelBuilder.ApplyConfigurationsFromAssembly(typeof(NexusLASDbContext).Assembly);
        }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            //var lookupEntries = base.ChangeTracker.Entries<LookBaseEntity>()
            //.Where(q => q.State == EntityState.Added || q.State == EntityState.Modified || q.State == EntityState.Deleted);

            //foreach (var lookupEntry in lookupEntries)
            //{
            //    if (lookupEntry.State == EntityState.Added)
            //    {
            //        lookupEntry.Entity.CreatedByDate = DateTime.Now;
            //        lookupEntry.Entity.CreatedByIDN = _userService.UserId;
            //    }
            //    else if ((lookupEntry.State == EntityState.Modified && lookupEntry.Entity.IsDeleted == true) || lookupEntry.State == EntityState.Deleted) // Handle soft delete through updating isDelete Flag
            //    {
            //        lookupEntry.Entity.DateDeleted = DateTime.Now;
            //        lookupEntry.Entity.DeletedBy = _userService.UserId;
            //    }
            //    else if (lookupEntry.State == EntityState.Modified)
            //    {
            //        lookupEntry.Entity.DateModified = DateTime.Now;
            //        lookupEntry.Entity.ModifiedBy = _userService.UserId;
            //    }
            //}


            return base.SaveChangesAsync(cancellationToken);
        }
    }
}
