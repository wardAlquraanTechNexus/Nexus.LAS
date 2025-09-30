using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.BulkChangePrivate
{
    public class BulkChangeTransactionPrivateHandler : IRequestHandler<BulkChangeTransactionPrivateCommand, int>
    {
        private readonly ITransactionService _transactionService;

        public BulkChangeTransactionPrivateHandler(ITransactionService transactionService)
        {
            _transactionService = transactionService;
        }

        public async Task<int> Handle(BulkChangeTransactionPrivateCommand request, CancellationToken cancellationToken)
        {
            return await _transactionService.BulkChangePrivate(request.Ids, request.IsPrivate);
        }
    }
}