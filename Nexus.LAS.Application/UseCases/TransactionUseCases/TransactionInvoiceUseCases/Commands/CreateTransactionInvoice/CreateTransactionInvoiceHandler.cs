using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.CreateTransactionInvoice
{
    public class CreateTransactionInvoiceHandler : CreateBaseCommandHandler<TransactionInvoice, CreateTransactionInvoiceCommand , ITransactionInvoiceService>
    {
        public CreateTransactionInvoiceHandler(ITransactionInvoiceService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}