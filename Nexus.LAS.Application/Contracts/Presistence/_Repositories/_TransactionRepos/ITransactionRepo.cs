using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos
{
    public interface ITransactionRepo : IGenericRepo<Transaction>
    {
        // Add custom methods for Transaction if needed
    }
}