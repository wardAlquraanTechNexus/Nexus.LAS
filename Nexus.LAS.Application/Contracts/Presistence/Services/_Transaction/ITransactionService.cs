using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetAll;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._Transaction
{
    public interface ITransactionService : IGenericService<Transaction>
    {
        Task<PagingResult<TransactionDto>> SearchTransactions(GetPagingTransactionQuery query);
        Task<int> BulkChangeStatus(List<int> ids, CommonStatus status);
        Task<int> BulkChangePrivate(List<int> ids, bool privateValue);
        Task<byte[]> ExportToPdf(int id);
        Task<List<AllTransactionDTO>> GetAllDTOs(GetAllTransactionQuery query);
    }
}