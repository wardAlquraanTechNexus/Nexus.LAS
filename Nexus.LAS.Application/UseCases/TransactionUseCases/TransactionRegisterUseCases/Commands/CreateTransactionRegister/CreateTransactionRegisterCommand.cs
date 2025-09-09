using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister
{
    public class CreateTransactionRegisterCommand : CreateBaseCommand
    {
        public int TransactionId { get; set; }
        public int RegisterId { get; set; }
        public bool? PrimaryRegister { get; set; }
    }
}