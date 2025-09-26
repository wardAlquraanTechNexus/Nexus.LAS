using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.BulkChangePrivate
{
    internal class BulkChangeLawFirmPrivateHandler : IRequestHandler<BulkChangeLawFirmPrivateCommand, int>
    {
        private readonly ILawFirmService _lawFirmService;
        public BulkChangeLawFirmPrivateHandler(ILawFirmService lawFirmService)
        {
            _lawFirmService = lawFirmService;
        }
        public async Task<int> Handle(BulkChangeLawFirmPrivateCommand request, CancellationToken cancellationToken)
        {
            return await _lawFirmService.BulkChangePrivate(request.Ids, request.IsPrivate);
        }
    }
}
