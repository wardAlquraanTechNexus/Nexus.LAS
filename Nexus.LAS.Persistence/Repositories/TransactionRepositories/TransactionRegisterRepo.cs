using Microsoft.EntityFrameworkCore;
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
        public async Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null)
        {
            return await _context.TransactionRegister
                .AnyAsync(x =>
                    x.RegisterIdc == registerIdc &&
                    x.TransactionId == transactionId &&
                    x.PrimaryRegister == true &&
                    (!excludedId.HasValue || x.Id != excludedId.Value)
                );
        }

        public async Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null)
        {
            return await _context.TransactionRegister
                .AnyAsync(x =>
                    x.TransactionId == transactionId &&
                    x.RegisterId == registerId &&
                    x.RegisterIdc == registerIdc &&
                    (!excludedId.HasValue || x.Id != excludedId.Value)
                );
        }
    }
}