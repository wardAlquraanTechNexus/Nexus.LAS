using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetAll
{
    public class GetAllTransactionRegisterHandler : GetAllBaseHandler<TransactionRegisterDto, TransactionRegister, GetAllTransactionRegisterQuery, ITransactionRegisterService>
    {
        public GetAllTransactionRegisterHandler(ITransactionRegisterService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}