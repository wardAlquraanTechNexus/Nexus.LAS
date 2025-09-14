using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC;

public class CreateFPCHandler
    : CreateBaseCommandHandler<FPC, CreateFPCCommand, IFPCService>
{
    public CreateFPCHandler(
        IFPCService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}