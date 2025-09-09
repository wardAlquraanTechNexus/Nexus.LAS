using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Commands.CreateTransactionOtf
{
    public class CreateTransactionOtfHandler : CreateBaseCommandHandler< TransactionOtf, CreateTransactionOtfCommand , ITransactionOtfService>
    {
        public CreateTransactionOtfHandler(ITransactionOtfService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}