using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionInvoiceDto
    {
        public int Id { get; set; }

        public int TransactionId { get; set; }
        public int LawFirmId { get; set; }
        public string? Invoice { get; set; }
        public DateTime? InvoiceDate { get; set; }
        public string? Amount { get; set; }
        public string? Paid { get; set; }
        public int? Currency { get; set; }
        public string? Note { get; set; }

    }
}