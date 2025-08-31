
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.GetGroupDTO;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases
{
    public class SearchGroupQueryHandler : IRequestHandler<SearchGroupQuery, PagingResult<Group>>
    {
        private readonly IGroupService _service;

        public SearchGroupQueryHandler(IGroupService service)
        {
            _service = service;
        }

        public async Task<PagingResult<Group>> Handle(SearchGroupQuery query, CancellationToken cancellationToken)
        {
            return await _service.SearchGroup(query);
        }
    }
}
