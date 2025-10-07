using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.BulkChangePrivate
{
    public class BulkChangeFPCPrivateHandler : IRequestHandler<BulkChangeFPCPrivateCommand, int>
    {
        private readonly IFPCService _fpcService;

        public BulkChangeFPCPrivateHandler(IFPCService fpcService)
        {
            _fpcService = fpcService;
        }

        public async Task<int> Handle(BulkChangeFPCPrivateCommand request, CancellationToken cancellationToken)
        {
            return await _fpcService.BulkChangePrivate(request.Ids, request.IsPrivate);
        }
    }
}