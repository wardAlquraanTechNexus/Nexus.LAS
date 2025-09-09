using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Queries.GetPaging
{
    public class GetPagingTransactionOtfHandler : GetBasePagingHandler<TransactionOtfDto, TransactionOtf, GetPagingTransactionOtfQuery, ITransactionOtfService>
    {
        public GetPagingTransactionOtfHandler(ITransactionOtfService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}