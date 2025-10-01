using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos
{
    public interface ITransactionRegisterRepo : IGenericRepo<TransactionRegister>
    {
        Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null);
        Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null);
    }
}