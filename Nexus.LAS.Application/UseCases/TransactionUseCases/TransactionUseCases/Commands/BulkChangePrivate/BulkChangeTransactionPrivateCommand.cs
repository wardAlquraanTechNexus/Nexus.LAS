using MediatR;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.BulkChangePrivate
{
    public class BulkChangeTransactionPrivateCommand : IRequest<int>
    {
        public List<int> Ids { get; set; } = [];
        public bool IsPrivate { get; set; }
    }
}