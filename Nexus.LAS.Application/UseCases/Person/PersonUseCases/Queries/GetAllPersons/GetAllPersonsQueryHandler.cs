using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    internal class GetAllPersonsQueryHandler : IRequestHandler<GetAllPersonsQuery, List<PersonDto>>
    {
        private readonly IPersonService _personService;
        private readonly IMapper _mapper;
        public GetAllPersonsQueryHandler(IPersonService personService, IMapper mapper)
        {
            _mapper = mapper;
            _personService = personService;
        }
        public async Task<List<PersonDto>> Handle(GetAllPersonsQuery request, CancellationToken cancellationToken)

        {
            var query = new GetPersonsQuery()
            {
                Id = request.Id,
                SearchBy = request.SearchBy
            };

            return  await _personService.GetAllPersons(query);
            
        }
    }
}
