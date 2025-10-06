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

            
        }
    }
}
