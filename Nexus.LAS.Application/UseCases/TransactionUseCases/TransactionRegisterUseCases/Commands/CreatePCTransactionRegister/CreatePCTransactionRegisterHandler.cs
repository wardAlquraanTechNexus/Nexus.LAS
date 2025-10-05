using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreatePCTransactionRegister
{
    internal class CreatePCTransactionRegisterHandler : CreateBaseCommandHandler<TransactionRegister, CreatePCTransactionRegisterCommand, ITransactionRegisterService>
    {
        public CreatePCTransactionRegisterHandler(ITransactionRegisterService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<int> Handle(CreatePCTransactionRegisterCommand request, CancellationToken cancellationToken)
        {
            return await _service.CreatePCTransactionRegister(request);
        }
    }
}
