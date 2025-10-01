using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.Contracts.Identity;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionRegisterService : GenericService<TransactionRegister>, ITransactionRegisterService
    {
        private readonly ITransactionRegisterRepo _repo;

        public TransactionRegisterService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionRegisterRepo repo
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }


        public async Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null)
        {
            return await _repo.HasPrimaryRegisterAsync(registerIdc, transactionId, excludedId);
        }
        public async Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null)
        {
            return await _repo.ExistsByTransactionAndRegisterAsync(transactionId , registerId , registerIdc , excludedId);
        }
    }
}