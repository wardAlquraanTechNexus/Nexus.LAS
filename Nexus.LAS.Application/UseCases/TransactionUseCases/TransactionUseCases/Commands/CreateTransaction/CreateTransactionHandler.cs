using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction
{
    internal class CreateTransactionHandler : CreateBaseCommandHandler<Transaction, CreateTransactionCommand, ITransactionService>
    {
        public CreateTransactionHandler(ITransactionService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
