using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands
{
    public class LinkUserPersonCommand : IRequest<bool>
    {
        public string Username { get; set; }
        public int PersonId { get; set; }
    }
}
