using MediatR;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.BulkChangePrivate
{
    public class BulkChangeFPCPrivateCommand : IRequest<int>
    {
        public List<int> Ids { get; set; }
        public bool IsPrivate { get; set; }
    }
}