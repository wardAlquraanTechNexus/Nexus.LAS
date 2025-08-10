using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;

public class CreatePersonHandler: IRequestHandler<CreatePersonCommand , int>
{
    private readonly IPersonService _personService;
    private readonly IMapper _mapper;

    public CreatePersonHandler(IPersonService personService, IMapper mapper)
    {
        _personService = personService;
        _mapper = mapper;
    }

    public async Task<int> Handle(CreatePersonCommand command , CancellationToken cancellationToken)
    {
        Person person = _mapper.Map<Person>(command);

        return await _personService.CreateAsync(person);
    }
}
