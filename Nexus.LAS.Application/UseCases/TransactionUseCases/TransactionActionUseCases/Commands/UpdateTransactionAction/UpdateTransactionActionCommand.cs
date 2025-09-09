using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.UpdateTransactionAction
{
    public class UpdateTransactionActionCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        // Add all properties from TransactionAction except those in BaseEntity and any IDC
    }
}