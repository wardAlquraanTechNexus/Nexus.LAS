using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.UpdateTransactionRegister
{
    public class UpdateTransactionRegisterCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int TransactionId { get; set; }
        public int RegisterId { get; set; }
        public bool? PrimaryRegister { get; set; }
    }
}