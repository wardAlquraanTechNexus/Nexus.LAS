using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetAll
{
    public class GetAllTransactionHandler : GetAllBaseHandler<AllTransactionDTO , Transaction , GetAllTransactionQuery , ITransactionService>
    {
        public GetAllTransactionHandler(ITransactionService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<List<AllTransactionDTO>> Handle(GetAllTransactionQuery request, CancellationToken cancellationToken)
        {
            var entities = await _service.GetAllDTOs(request);
            return entities;
        }
    }
}