using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionOtfRepo : GenericRepo<TransactionOtf>, ITransactionOtfRepo
    {
        public TransactionOtfRepo(NexusLASDbContext context) : base(context)
        {
        }
        // Add custom methods for TransactionOtf if needed
    }
}