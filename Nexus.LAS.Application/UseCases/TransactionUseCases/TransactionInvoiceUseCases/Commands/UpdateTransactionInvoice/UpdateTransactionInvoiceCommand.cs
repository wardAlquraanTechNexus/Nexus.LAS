using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice
{
    public class UpdateTransactionInvoiceCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        // Add all properties from TransactionInvoice except those in BaseEntity and any IDC
    }
}