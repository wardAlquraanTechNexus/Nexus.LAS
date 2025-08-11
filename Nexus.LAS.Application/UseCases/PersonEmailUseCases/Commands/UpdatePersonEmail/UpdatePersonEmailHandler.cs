// UpdatePersonEmailHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.UpdatePersonEmail;

public class UpdatePersonEmailHandler : UpdateBaseCommandHandler<PersonsEmail, UpdatePersonEmailCommand, IPersonEmailService>
{
    public UpdatePersonEmailHandler(IPersonEmailService service, IMapper mapper) : base(service, mapper)
    {
    }
}