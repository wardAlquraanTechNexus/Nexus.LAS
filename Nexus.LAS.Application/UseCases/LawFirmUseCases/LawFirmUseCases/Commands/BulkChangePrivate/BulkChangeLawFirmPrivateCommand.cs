using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.BulkChangePrivate
{
    public class BulkChangeLawFirmPrivateCommand: IRequest<int>
    {
        public List<int> Ids { get; set; }
        public bool IsPrivate { get; set; }
    }
}
