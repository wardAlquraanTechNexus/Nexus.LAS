using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister
{
    public class CreateTransactionRegisterHandler : CreateBaseCommandHandler<TransactionRegister, CreateTransactionRegisterCommand , ITransactionRegisterService>
    {
        public CreateTransactionRegisterHandler(ITransactionRegisterService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}