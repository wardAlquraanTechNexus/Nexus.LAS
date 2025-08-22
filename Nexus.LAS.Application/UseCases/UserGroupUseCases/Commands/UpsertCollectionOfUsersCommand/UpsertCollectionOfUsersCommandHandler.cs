using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands
{
    public class UpsertCollectionOfUsersCommandHandler : IRequestHandler<UpsertCollectionOfUsersGroupsCommand, bool>
    {
        private readonly IUserGroupService _service;

        public UpsertCollectionOfUsersCommandHandler(IUserGroupService service)
        {
            _service = service;
        }

        public async Task<bool> Handle(UpsertCollectionOfUsersGroupsCommand request, CancellationToken cancellationToken)
        {
            return await _service.UpsertCollectionOfUsers(request);
        }
    }
}
