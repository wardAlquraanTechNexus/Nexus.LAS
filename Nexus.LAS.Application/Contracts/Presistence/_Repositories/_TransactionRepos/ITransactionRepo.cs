using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos
{
    public interface ITransactionRepo : IGenericRepo<Transaction>
    {
        Task<PagingResult<TransactionDto>> SearchTransactions(GetPagingTransactionQuery query);
        Task<int> BulkChangeStatus(List<int> ids, CommonStatus status);
        Task<int> BulkChangePrivate(List<int> ids, bool privateValue);
    }
}