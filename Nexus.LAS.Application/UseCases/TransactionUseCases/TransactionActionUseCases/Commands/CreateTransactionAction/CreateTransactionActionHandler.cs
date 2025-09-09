using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.CreateTransactionAction
{
    public class CreateTransactionActionHandler : CreateBaseCommandHandler<TransactionAction, CreateTransactionActionCommand , ITransactionActionService>
    {
        public CreateTransactionActionHandler(ITransactionActionService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}