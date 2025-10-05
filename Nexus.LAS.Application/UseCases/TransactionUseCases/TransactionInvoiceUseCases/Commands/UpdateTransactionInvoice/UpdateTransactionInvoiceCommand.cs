using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice
{
    public class UpdateTransactionInvoiceCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int TransactionId { get; set; }
        public int LawFirmId { get; set; }
        public string? Invoice { get; set; }
        public DateTime? InvoiceDate { get; set; }
        public int? Amount { get; set; }
        public int? Paid { get; set; }
        public int? Currency { get; set; }
        public string Note { get; set; }
        public IFormFile? File { get; set; }
        public bool RemoveFile { get; set; }
    }
}