using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.UseCases.GroupUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.GroupCases.Commands;

public class UpdateGroupHandler : UpdateBaseCommandHandler<Group, UpdateGroupCommand, IGroupService>
{
    public UpdateGroupHandler(IGroupService service, IMapper mapper) : base(service, mapper)
    {
    }
}
