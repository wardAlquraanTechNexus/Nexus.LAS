using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeFPCStatusHandler : IRequestHandler<BulkChangeFPCStatusCommand, int>
    {
        private readonly IFPCService _fpcService;

        public BulkChangeFPCStatusHandler(IFPCService fpcService)
        {
            _fpcService = fpcService;
        }

        public async Task<int> Handle(BulkChangeFPCStatusCommand request, CancellationToken cancellationToken)
        {
            return await _fpcService.BulkChangeStatus(request.Ids, request.Status);
        }
    }
}