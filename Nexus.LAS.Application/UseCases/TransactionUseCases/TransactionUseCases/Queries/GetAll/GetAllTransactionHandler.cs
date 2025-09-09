using AutoMapper;
using MediatR;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetAll
{
    public class GetAllTransactionHandler : GetAllBaseHandler<TransactionDto , Transaction , GetAllTransactionQuery , ITransactionService>
    {
        public GetAllTransactionHandler(ITransactionService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}