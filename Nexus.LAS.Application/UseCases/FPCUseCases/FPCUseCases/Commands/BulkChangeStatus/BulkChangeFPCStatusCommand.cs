using MediatR;
using Nexus.LAS.Domain.Constants.Enums;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeFPCStatusCommand : IRequest<int>
    {
        public List<int> Ids { get; set; }
        public CommonStatus Status { get; set; }
    }
}