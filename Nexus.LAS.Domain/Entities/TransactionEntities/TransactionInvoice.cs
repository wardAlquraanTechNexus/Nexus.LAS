using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.TransactionEntities
{
    [Table("TransactionsInvoices")]
    public class TransactionInvoice : BaseEntity
    {
        [Column("TransactionsInvoiceIDC")]
        public string TransactionsInvoiceIdc { get; set; } = EntityIDCs.TransactionsInvoices;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("TransactionsInvoiceIDN")]
        public override int Id { get; set; }

        [Column("Transactions_IDN")]
        public int TransactionId { get; set; }

        [Column("LawFirms_IDN")]
        public int LawFirmId { get; set; }

        [Column("Invoice")]
        public string? Invoice { get; set; }

        [Column("InvoiceDate")]
        public DateTime? InvoiceDate { get; set; }

        [Column("Amount")]
        public string? Amount { get; set; }

        [Column("Paid")]
        public string? Paid { get; set; }

        [Column("Currency")]
        public int? Currency { get; set; }

        [Column("Note")]
        public string? Note { get; set; }
    }
}
