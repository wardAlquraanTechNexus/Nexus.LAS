using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetAll
{
    public class GetAllTransactionInvoiceHandler : GetAllBaseHandler<TransactionInvoiceDto, TransactionInvoice, GetAllTransactionInvoiceQuery, ITransactionInvoiceService>
    {
        public GetAllTransactionInvoiceHandler(ITransactionInvoiceService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}