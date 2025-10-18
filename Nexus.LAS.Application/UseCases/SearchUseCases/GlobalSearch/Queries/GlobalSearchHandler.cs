using MediatR;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.SearchDTOs;

namespace Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries
{
    public class GlobalSearchHandler : IRequestHandler<GlobalSearchQuery, List<GlobalSearchDTO>>
    {
        private readonly ISearchRepo _searchRepo;

        public GlobalSearchHandler(ISearchRepo searchRepo)
        {
            _searchRepo = searchRepo;
        }

        public async Task<List<GlobalSearchDTO>> Handle(GlobalSearchQuery request, CancellationToken cancellationToken)
        {
            return await _searchRepo.GlobalSearch(request);
        }
    }
}