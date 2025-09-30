using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionService : GenericService<Transaction>, ITransactionService
    {
        private readonly ITransactionRepo _repo;
        public TransactionService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionRepo repo
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }
        public async Task<PagingResult<TransactionDto>> SearchTransactions(GetPagingTransactionQuery query)
        {
            return await _repo.SearchTransactions(query);
        }

        public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
        {
            return await _repo.BulkChangeStatus(ids, status);
        }

        public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
        {
            return await _repo.BulkChangePrivate(ids, privateValue);
        }

    }
}