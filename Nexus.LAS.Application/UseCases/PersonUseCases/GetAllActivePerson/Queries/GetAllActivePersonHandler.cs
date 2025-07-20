using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.GetAllActivePerson
{
    internal class GetAllActivePersonHandler : IRequestHandler<GetAllActivePersonQuery, PagingResult<GetAllPersonDto>>
    {
        private readonly IPersonService _personService;
        private readonly IMapper _mapper;
        public GetAllActivePersonHandler(IPersonService personService, IMapper mapper)
        {
            _mapper = mapper;
            _personService = personService;
        }
        public async Task<PagingResult<GetAllPersonDto>> Handle(GetAllActivePersonQuery request, CancellationToken cancellationToken)

        {
            PagingResult<Person> persons = await _personService.GetAllActivePerson(request);
            PagingResult<GetAllPersonDto> personDtos = _mapper.Map<PagingResult<GetAllPersonDto>>(persons);
            return personDtos;
        }
    }
}
