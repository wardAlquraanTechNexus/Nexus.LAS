using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.DatabaseContext
{
    public partial class NexusLASDbContext
    {
        public DbSet<Transaction> Transactions { get; set; }
        public DbSet<TransactionAction> TransactionActions { get; set; }
        public DbSet<TransactionInvoice> TransactionInvoices { get; set; }
        public DbSet<TransactionOtf> TransactionOtfs { get; set; }
        public DbSet<TransactionRegister> TransactionRegister { get; set; }

        protected void OnTransactionModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<Transaction>()
                .HasKey(t => new { t.TransactionIdc, t.Id });

            modelBuilder.Entity<TransactionAction>()
                .HasKey(e => new { e.TransactionsActionIdc, e.Id });

            modelBuilder.Entity<TransactionInvoice>()
                .HasKey(e => new { e.TransactionsInvoiceIdc, e.Id });

            modelBuilder.Entity<TransactionOtf>()
                .HasKey(e => new { e.TransactionsOtfIdc, e.Id });
            modelBuilder.Entity<TransactionRegister>()
                .HasKey(e => new { e.TransactionsRegisterIdc, e.Id });

        }
    }
}
