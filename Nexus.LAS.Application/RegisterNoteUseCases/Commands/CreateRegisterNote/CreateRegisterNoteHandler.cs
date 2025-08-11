using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.RegisterEntities;

namespace Nexus.LAS.Application.RegisterNoteUseCases.Commands.CreateRegisterNote;

public class CreateRegisterNoteHandler : CreateBaseCommandHandler<RegistersNote, CreateRegisterNoteCommand, IRegisterNoteService>
{
    public CreateRegisterNoteHandler(IRegisterNoteService service, IMapper mapper) : base(service, mapper)
    {
    }
}
