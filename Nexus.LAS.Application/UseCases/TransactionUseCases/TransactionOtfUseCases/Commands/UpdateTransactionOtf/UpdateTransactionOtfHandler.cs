using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Commands.UpdateTransactionOtf
{
    public class UpdateTransactionOtfHandler : UpdateBaseCommandHandler<TransactionOtf, UpdateTransactionOtfCommand , ITransactionOtfService>
    {
        public UpdateTransactionOtfHandler(ITransactionOtfService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}