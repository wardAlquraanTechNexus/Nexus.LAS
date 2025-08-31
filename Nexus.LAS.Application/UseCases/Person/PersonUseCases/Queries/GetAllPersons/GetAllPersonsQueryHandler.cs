using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    internal class GetAllPersonsQueryHandler : IRequestHandler<GetAllPersonsQuery, List<GetPersonsDto>>
    {
        private readonly IPersonService _personService;
        private readonly IMapper _mapper;
        public GetAllPersonsQueryHandler(IPersonService personService, IMapper mapper)
        {
            _mapper = mapper;
            _personService = personService;
        }
        public async Task<List<GetPersonsDto>> Handle(GetAllPersonsQuery request, CancellationToken cancellationToken)

        {
            List<Person> persons = await _personService.GetAllPersons(request);
            List<GetPersonsDto> personDtos = _mapper.Map<List<GetPersonsDto>>(persons);
            return personDtos;
        }
    }
}
