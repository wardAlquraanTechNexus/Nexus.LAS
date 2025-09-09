using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionRegisterRepo : GenericRepo<TransactionRegister>, ITransactionRegisterRepo
    {
        public TransactionRegisterRepo(NexusLASDbContext context) : base(context)
        {
        }
        // Add custom methods for TransactionRegister if needed
    }
}