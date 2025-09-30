using MediatR;
using Nexus.LAS.Domain.Constants.Enums;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeTransactionStatusCommand : IRequest<int>
    {
        public List<int> Ids { get; set; } = [];
        public CommonStatus Status { get; set; }
    }
}