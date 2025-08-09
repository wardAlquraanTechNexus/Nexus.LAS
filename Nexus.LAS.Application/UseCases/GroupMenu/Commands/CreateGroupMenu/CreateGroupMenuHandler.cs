using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;

public class CreateGroupMenuHandler : CreateBaseCommandHandler<GroupMenu, CreateGroupMenuCommand, IGroupMenuService>
{
    public CreateGroupMenuHandler(IGroupMenuService service, IMapper mapper) : base(service, mapper)
    {
    }
}
