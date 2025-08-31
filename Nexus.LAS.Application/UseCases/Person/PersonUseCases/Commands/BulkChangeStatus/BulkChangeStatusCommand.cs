using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeStatusCommand: IRequest<int>
    {
        public List<int> Ids { get; set; }
        public int Status { get; set; }
    }
}
