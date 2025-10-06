using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging
{
    public class GetPagingTransactionRegisterByListIdcsHandler : GetBasePagingHandler<TransactionRegisterDto, TransactionRegister, GetPagingTransactionRegisterByListIdcsQuery, ITransactionRegisterService>
    {
        public GetPagingTransactionRegisterByListIdcsHandler(ITransactionRegisterService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<PagingResult<TransactionRegisterDto>> Handle(GetPagingTransactionRegisterByListIdcsQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetPagingByListIdcs(request);
        }
    }
}