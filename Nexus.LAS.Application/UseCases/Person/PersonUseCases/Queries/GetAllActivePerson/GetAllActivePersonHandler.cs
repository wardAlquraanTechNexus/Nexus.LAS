using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;

internal class GetAllActivePersonHandler : IRequestHandler<GetAllActivePersonQuery, PagingResult<PersonDto>>
{
    private readonly IPersonService _personService;
    private readonly IMapper _mapper;
    public GetAllActivePersonHandler(IPersonService personService, IMapper mapper)
    {
        _mapper = mapper;
        _personService = personService;
    }
    public async Task<PagingResult<PersonDto>> Handle(GetAllActivePersonQuery request, CancellationToken cancellationToken)

    {
        PagingResult<Person> persons = await _personService.GetActivePersons(request);
        PagingResult<PersonDto> personDtos = _mapper.Map<PagingResult<PersonDto>>(persons);
        return personDtos;
    }
}
