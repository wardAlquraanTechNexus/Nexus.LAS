using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.CreateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._Transaction
{
    public interface ITransactionInvoiceService : IGenericService<TransactionInvoice>
    {
        Task<int> CreateTransactionInvoice(CreateTransactionInvoiceCommand command);
        Task<bool> UpdateTransactionInvoice(UpdateTransactionInvoiceCommand command);
        Task<PagingResult<TransactionInvoiceDto>> GetPaging(GetPagingTransactionInvoiceQuery query);
    }
}