using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Commands.DeactivateReminder
{
    public class DeactivateReminderCommand : IRequest<bool>
    {
        public string SubIdc { get; set; } = string.Empty;
        public int Id { get; set; }
    }
}
