using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Commands
{
    public class UpsertCollectionOfGroupMenusCommandHandler : IRequestHandler<UpsertCollectionOfGroupsMenusCommand, bool>
    {
        private readonly IGroupMenuService _service;

        public UpsertCollectionOfGroupMenusCommandHandler(IGroupMenuService service)
        {
            _service = service;
        }

        public async Task<bool> Handle(UpsertCollectionOfGroupsMenusCommand request, CancellationToken cancellationToken)
        {
            return await _service.UpsertCollectionOfMenus(request);
        }
    }
}
