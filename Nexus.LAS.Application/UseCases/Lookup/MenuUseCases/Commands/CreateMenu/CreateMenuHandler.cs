using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Commands;

public class CreateMenuHandler : CreateBaseCommandHandler<Menu, CreateMenuCommand, IMenuService>
{
    public CreateMenuHandler(IMenuService service, IMapper mapper) : base(service, mapper)
    {
    }
}
