using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging
{
    public class GetPagingTransactionInvoiceHandler : GetBasePagingHandler<TransactionInvoiceDto, TransactionInvoice, GetPagingTransactionInvoiceQuery, ITransactionInvoiceService>
    {
        public GetPagingTransactionInvoiceHandler(ITransactionInvoiceService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<PagingResult<TransactionInvoiceDto>> Handle(GetPagingTransactionInvoiceQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetPaging(request);
        }
    }
}