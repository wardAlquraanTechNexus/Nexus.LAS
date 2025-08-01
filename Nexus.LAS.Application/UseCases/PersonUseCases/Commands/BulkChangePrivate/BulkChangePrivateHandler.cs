using MediatR;
using Nexus.LAS.Application.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangePrivate
{
    public class BulkChangePrivateHandler: IRequestHandler<BulkChangePrivateCommand , int>
    {
        private readonly IPersonService _personService;
        public BulkChangePrivateHandler(IPersonService personService)
        {
            _personService = personService;
        }
        public async Task<int> Handle(BulkChangePrivateCommand command , CancellationToken cancellationToken)
        {
            return await _personService.BulkChangePrivate(command.Ids, command.IsPrivate);
        }
    }
}
