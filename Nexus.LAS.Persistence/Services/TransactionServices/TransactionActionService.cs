using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.Contracts.Identity;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionActionService : GenericService<TransactionAction>, ITransactionActionService
    {
        public TransactionActionService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionActionRepo repo
        ) : base(context, userIdentityService, repo)
        {
        }
        // Add custom methods for TransactionAction if needed
    }
}