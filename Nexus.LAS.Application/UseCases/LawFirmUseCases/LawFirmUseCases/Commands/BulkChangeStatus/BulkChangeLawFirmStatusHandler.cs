using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MediatR;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.BulkChangeStatus
{
    internal class BulkChangeLawFirmStatusHandler : IRequestHandler<BulkChangeLawFirmStatusCommand, int>
    {
        private readonly ILawFirmService _lawFirmService;
        public BulkChangeLawFirmStatusHandler(ILawFirmService lawFirmService)
        {
            _lawFirmService = lawFirmService;
        }
        public async Task<int> Handle(BulkChangeLawFirmStatusCommand request, CancellationToken cancellationToken)
        {
            return await _lawFirmService.BulkChangeStatus(request.Ids, request.Status);
        }
    }
}
