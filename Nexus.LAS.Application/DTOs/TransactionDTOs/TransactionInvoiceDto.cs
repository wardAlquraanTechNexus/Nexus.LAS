using Nexus.LAS.Domain.Constants;
using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionInvoiceDto
    {
        public int Id
        {
            get => _id;
            set
            {
                _id = value;
                TransactionNumber = $"{EntityIDCs.TransactionsInvoices}{_id:D4}";
            }
        }
        public int _id;

        public int TransactionId { get; set; }
        public string TransactionNumber { get; set; }
        public int LawFirmId { get; set; }
        public string? Invoice { get; set; }
        public DateTime? InvoiceDate { get; set; }
        public int? Amount { get; set; }
        public int? Paid { get; set; }
        public int? Currency { get; set; }
        public string Note { get; set; }

    }
}