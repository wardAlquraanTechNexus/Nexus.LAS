using MediatR;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Commands.DeactivateReminder
{
    public class DeactivateReminderHandler : IRequestHandler<DeactivateReminderCommand , bool>
    {
        private readonly IGlobalService _service;

        public DeactivateReminderHandler(IGlobalService service)
        {
            _service = service;
        }

        public async Task<bool> Handle(DeactivateReminderCommand request, CancellationToken cancellationToken)
        {
            return await _service.DeactivateReminderAsync(request.SubIdc, request.Id);
           
        }
    }
}
