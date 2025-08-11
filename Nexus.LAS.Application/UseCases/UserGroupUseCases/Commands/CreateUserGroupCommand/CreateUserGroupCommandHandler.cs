using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands
{
    public class CreateUserGroupCommandHandler : CreateBaseCommandHandler<UserGroup, CreateUserGroupCommand, IUserGroupService>
    {
        public CreateUserGroupCommandHandler(IUserGroupService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
