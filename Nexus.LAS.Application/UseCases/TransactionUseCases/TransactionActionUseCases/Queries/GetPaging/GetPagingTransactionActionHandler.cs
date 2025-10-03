using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging
{
    public class GetPagingTransactionActionHandler : GetBasePagingHandler<TransactionActionDto, TransactionAction, GetPagingTransactionActionQuery, ITransactionActionService>
    {
        public GetPagingTransactionActionHandler(ITransactionActionService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<PagingResult<TransactionActionDto>> Handle(GetPagingTransactionActionQuery request, CancellationToken cancellationToken)
        {
            
            var res = await _service.GetPaging(request);

            return res;


        }
    }
}