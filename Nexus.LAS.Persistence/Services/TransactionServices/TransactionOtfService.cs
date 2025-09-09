using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.Contracts.Identity;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionOtfService : GenericService<TransactionOtf>, ITransactionOtfService
    {
        public TransactionOtfService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionOtfRepo repo
        ) : base(context, userIdentityService, repo)
        {
        }
        // Add custom methods for TransactionOtf if needed
    }
}