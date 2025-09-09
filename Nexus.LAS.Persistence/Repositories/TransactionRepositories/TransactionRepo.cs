using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionRepo : GenericRepo<Transaction>, ITransactionRepo
    {
        public TransactionRepo(NexusLASDbContext context) : base(context)
        {
        }

    }
}