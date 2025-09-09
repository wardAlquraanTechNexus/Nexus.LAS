using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.Contracts.Identity;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionInvoiceService : GenericService<TransactionInvoice>, ITransactionInvoiceService
    {
        public TransactionInvoiceService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionInvoiceRepo repo
        ) : base(context, userIdentityService, repo)
        {
        }
        // Add custom methods for TransactionInvoice if needed
    }
}