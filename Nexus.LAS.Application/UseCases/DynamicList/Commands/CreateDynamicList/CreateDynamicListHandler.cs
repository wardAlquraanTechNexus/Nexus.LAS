using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.DynamicListUseCases.Commands;

public class CreateDynamicListHandler : CreateBaseCommandHandler<DynamicList, CreateDynamicListCommand, IDynamicListService>
{
    public CreateDynamicListHandler(IDynamicListService service, IMapper mapper) : base(service, mapper)
    {
    }
}
