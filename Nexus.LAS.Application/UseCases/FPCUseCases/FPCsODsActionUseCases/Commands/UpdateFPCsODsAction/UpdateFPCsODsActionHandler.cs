using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.UpdateFPCsODsAction;

public class UpdateFPCsODsActionHandler
    : UpdateBaseCommandHandler<FPCODAction, UpdateFPCODActionCommand, IFPCODActionService>
{
    public UpdateFPCsODsActionHandler(
        IFPCODActionService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}