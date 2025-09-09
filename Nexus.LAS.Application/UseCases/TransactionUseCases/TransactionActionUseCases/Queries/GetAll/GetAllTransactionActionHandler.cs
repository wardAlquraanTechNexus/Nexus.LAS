using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetAll
{
    public class GetAllTransactionActionHandler : GetAllBaseHandler<TransactionActionDto, TransactionAction, GetAllTransactionActionQuery, ITransactionActionService>
    {
        public GetAllTransactionActionHandler(ITransactionActionService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}