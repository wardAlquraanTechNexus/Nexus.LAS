using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.UpdateFPCsOD;

public class UpdateFPCODHandler
    : UpdateBaseCommandHandler<FPCOD, UpdateFPCODCommand, IFPCODService>
{
    public UpdateFPCODHandler(
        IFPCODService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}