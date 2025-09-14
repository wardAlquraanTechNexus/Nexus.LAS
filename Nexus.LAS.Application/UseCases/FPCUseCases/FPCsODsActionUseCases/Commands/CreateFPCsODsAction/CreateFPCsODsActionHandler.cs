using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.CreateFPCsODsAction;

public class CreateFPCsODsActionHandler
    : CreateBaseCommandHandler<FPCODAction, CreateFPCsODsActionCommand, IFPCODActionService>
{
    public CreateFPCsODsActionHandler(
        IFPCODActionService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}