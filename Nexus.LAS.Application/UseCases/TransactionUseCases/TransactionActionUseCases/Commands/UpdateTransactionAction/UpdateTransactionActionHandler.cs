using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.UpdateTransactionAction
{
    public class UpdateTransactionActionHandler : UpdateBaseCommandHandler<TransactionAction , UpdateTransactionActionCommand , ITransactionActionService>
    {
        public UpdateTransactionActionHandler(ITransactionActionService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<bool> Handle(UpdateTransactionActionCommand request, CancellationToken cancellationToken)
        {
            return (await _service.UpdateTransactionAction(request)) > 0;
        }
    }
}