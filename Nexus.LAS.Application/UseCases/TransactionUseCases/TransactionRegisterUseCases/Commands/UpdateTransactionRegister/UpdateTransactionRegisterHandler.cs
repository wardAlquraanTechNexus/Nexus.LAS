using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.UpdateTransactionRegister
{
    public class UpdateTransactionRegisterHandler : UpdateBaseCommandHandler<TransactionRegister, UpdateTransactionRegisterCommand, ITransactionRegisterService>
    {
        public UpdateTransactionRegisterHandler(ITransactionRegisterService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}