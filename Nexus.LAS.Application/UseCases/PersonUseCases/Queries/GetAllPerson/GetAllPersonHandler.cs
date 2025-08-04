using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class GetAllPersonHandler : IRequestHandler<GetAllPersonQuery,PagingResult<GetAllPersonDto>>
    {
        private readonly IPersonService _personService;
        private readonly IMapper _mapper;
        public GetAllPersonHandler(IPersonService personService, IMapper mapper) 
        {
            _mapper = mapper;
            _personService = personService;
        }
        public async Task<PagingResult<GetAllPersonDto>> Handle(GetAllPersonQuery request, CancellationToken cancellationToken)

        {
            PagingResult<Person> persons = await _personService.GetAllPerson(request);
            PagingResult<GetAllPersonDto> personDtos = _mapper.Map<PagingResult<GetAllPersonDto>>(persons);
            return personDtos;
        }
    }
}
