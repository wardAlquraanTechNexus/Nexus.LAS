using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangePrivate
{
    public class BulkChangePrivateCommand: IRequest<int>
    {
        public List<int> Ids { get; set; }
        public bool IsPrivate { get; set; }
    }
}
