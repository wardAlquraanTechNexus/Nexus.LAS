using MediatR;
using Nexus.LAS.Application.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeStatusHandler : IRequestHandler<BulkChangeStatusCommand , int>
    {
        public readonly IPersonService _personService;
        public BulkChangeStatusHandler(IPersonService personService) 
        {
            _personService = personService;
        }
        public async Task<int> Handle(BulkChangeStatusCommand command , CancellationToken cancellationToken)
        {
            return await _personService.BulkChangeStatus(command.Ids, command.Status);
        }
    }
}
