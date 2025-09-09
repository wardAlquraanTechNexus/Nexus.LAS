using AutoMapper;
using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging
{
    public class GetPagingTransactionHandler : GetBasePagingHandler<TransactionDto , Transaction , GetPagingTransactionQuery , ITransactionService>
    {
        public GetPagingTransactionHandler(ITransactionService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}