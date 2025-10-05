using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPersonsByCompanyId
{
    public class GetPersonsCompanyIdHandler : IRequestHandler<GetAllPersonsCompanyQuery, List<PersonDto>>
    {
        private readonly IPersonService _personService;

        public GetPersonsCompanyIdHandler(IPersonService personService)
        {
            _personService = personService;
        }

        public async Task<List<PersonDto>> Handle(GetAllPersonsCompanyQuery request, CancellationToken cancellationToken)
        {
            return await _personService.GetAllPersonsCompanyAsync(request);
        }
    }
}