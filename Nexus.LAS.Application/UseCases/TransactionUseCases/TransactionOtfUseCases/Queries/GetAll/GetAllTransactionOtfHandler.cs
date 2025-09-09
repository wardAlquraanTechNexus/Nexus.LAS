using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Queries.GetAll
{
    public class GetAllTransactionOtfHandler : GetAllBaseHandler<TransactionOtfDto, TransactionOtf, GetAllTransactionOtfQuery, ITransactionOtfService>
    {
        public GetAllTransactionOtfHandler(ITransactionOtfService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}