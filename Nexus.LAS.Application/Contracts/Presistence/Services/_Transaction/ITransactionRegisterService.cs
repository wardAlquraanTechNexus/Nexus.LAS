using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._Transaction
{
    public interface ITransactionRegisterService : IGenericService<TransactionRegister>
    {
        Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null);
        Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null);
    }
}