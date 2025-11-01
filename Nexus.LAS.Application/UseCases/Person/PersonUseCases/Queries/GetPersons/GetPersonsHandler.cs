using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class GetPersonsHandler : IRequestHandler<GetPersonsQuery,PagingResult<PersonDto>>
    {
        private readonly IPersonService _personService;
        private readonly IMapper _mapper;
        public GetPersonsHandler(IPersonService personService, IMapper mapper) 
        {
            _mapper = mapper;
            _personService = personService;
        }
        public async Task<PagingResult<PersonDto>> Handle(GetPersonsQuery request, CancellationToken cancellationToken)

        {
            return await _personService.GetPersons(request);
        }
    }
}
