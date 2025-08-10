using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;

public class UpdatePersonHandler: IRequestHandler<UpdatePersonCommand, GetPersonsDto>
{

    private readonly IPersonService _personService;
    private readonly IMapper _mapper;

    public UpdatePersonHandler(IPersonService personService, IMapper mapper)
    {
        _personService = personService;
        _mapper = mapper;
    }

    public async Task<GetPersonsDto> Handle(UpdatePersonCommand command , CancellationToken cancellationToken)
    {

        Person person = _mapper.Map<Person>(command);
        person = await _personService.UpdatePersonAsync(person);

        return _mapper.Map<GetPersonsDto>(person);

    }
}
