using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.UpdateTransaction
{
    internal class UpdateTransactionHandler: UpdateBaseCommandHandler<Transaction , UpdateTransactionCommand, ITransactionService>
    {
        public UpdateTransactionHandler(ITransactionService service, AutoMapper.IMapper mapper) : base(service, mapper)
        {
        }
    }
    
}
