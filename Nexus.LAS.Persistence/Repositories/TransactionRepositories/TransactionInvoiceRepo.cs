using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionInvoiceRepo : GenericRepo<TransactionInvoice>, ITransactionInvoiceRepo
    {
        public TransactionInvoiceRepo(NexusLASDbContext context) : base(context)
        {
        }
        public override async Task<PagingResult<TransactionInvoice>> SearhAsync<Params>(Params query)
        {
            return await base.SearhAsync(query);
        }
    }
}