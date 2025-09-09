using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice
{
    public class UpdateTransactionInvoiceHandler : UpdateBaseCommandHandler<TransactionInvoice, UpdateTransactionInvoiceCommand , ITransactionInvoiceService>
    {
        public UpdateTransactionInvoiceHandler(ITransactionInvoiceService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}