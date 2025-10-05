using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos
{
    public interface ITransactionInvoiceRepo : IGenericRepo<TransactionInvoice>
    {
        Task<PagingResult<TransactionInvoiceDto>> GetPaging(GetPagingTransactionInvoiceQuery query);
    }
}