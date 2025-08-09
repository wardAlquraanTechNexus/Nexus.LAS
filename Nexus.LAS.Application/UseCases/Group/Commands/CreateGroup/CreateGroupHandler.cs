using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.GroupUseCases.Commands;

public class CreateGroupHandler : CreateBaseCommandHandler<Group, CreateGroupCommand, IGroupService>
{
    public CreateGroupHandler(IGroupService service, IMapper mapper) : base(service, mapper)
    {
    }
}
