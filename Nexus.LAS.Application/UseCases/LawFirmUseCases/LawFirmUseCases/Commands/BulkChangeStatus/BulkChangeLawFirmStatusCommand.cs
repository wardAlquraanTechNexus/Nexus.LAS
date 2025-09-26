using MediatR;
using Nexus.LAS.Domain.Constants.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.BulkChangeStatus
{
    public class BulkChangeLawFirmStatusCommand : IRequest<int>
    {
        public List<int> Ids { get; set; }
        public CommonStatus Status { get; set; }
    }
}
