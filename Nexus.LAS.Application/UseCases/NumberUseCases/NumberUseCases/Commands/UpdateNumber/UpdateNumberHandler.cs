using AutoMapper;
using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.NumberUseCases.NumberUseCases.Commands.UpdateNumber;

public class UpdateNumberHandler
    : UpdateBaseCommandHandler<Number, UpdateNumberCommand, INumberService>
{
    public UpdateNumberHandler(
        INumberService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}