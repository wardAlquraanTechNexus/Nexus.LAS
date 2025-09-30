using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeTransactionStatusHandler : IRequestHandler<BulkChangeTransactionStatusCommand, int>
    {
        private readonly ITransactionService _transactionService;

        public BulkChangeTransactionStatusHandler(ITransactionService transactionService)
        {
            _transactionService = transactionService;
        }

        public async Task<int> Handle(BulkChangeTransactionStatusCommand request, CancellationToken cancellationToken)
        {
            return await _transactionService.BulkChangeStatus(request.Ids, request.Status);
        }
    }
}