using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class GetPersonDtoQueryHandler:IRequestHandler<GetPersonDtoQuery,PersonDto>
    {
        private readonly IPersonService _personService;

        public GetPersonDtoQueryHandler(IPersonService personService)
        {
            _personService = personService;
        }

        public async Task<PersonDto> Handle(GetPersonDtoQuery query , CancellationToken cancellationToken)
        {
            return await _personService.GetPersonDto(query.Id);
        }
    }
}
