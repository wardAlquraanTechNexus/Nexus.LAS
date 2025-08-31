// CreatePersonEmailHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.CreatePersonEmail;

public class CreatePersonEmailHandler : CreateBaseCommandHandler<PersonsEmail, CreatePersonEmailCommand, IPersonEmailService>
{
    public CreatePersonEmailHandler(IPersonEmailService service, IMapper mapper) : base(service, mapper)
    {
    }
}