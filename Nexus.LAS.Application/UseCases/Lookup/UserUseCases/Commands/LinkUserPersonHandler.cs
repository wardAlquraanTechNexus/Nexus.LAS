using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands
{
    public class LinkUserPersonHandler : IRequestHandler<LinkUserPersonCommand, bool>
    {
        private readonly IUserService _userService;
        public LinkUserPersonHandler(IUserService userService)
        {
            _userService = userService;
        }
        public async Task<bool> Handle(LinkUserPersonCommand request, CancellationToken cancellationToken)
        {
            return await _userService.LinkUserWithPerson(request);
        }
    }
}
