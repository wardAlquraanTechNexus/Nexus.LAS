using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Commands.UpdateTransactionOtf
{
    public class UpdateTransactionOtfCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        // Add all properties from TransactionOtf except those in BaseEntity and any IDC
    }
}