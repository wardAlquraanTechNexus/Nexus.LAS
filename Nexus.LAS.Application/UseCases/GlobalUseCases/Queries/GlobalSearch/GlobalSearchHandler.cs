using MediatR;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalSearch
{
    public class GlobalSearchHandler : IRequestHandler<GlobalSearchQuery, List<GlobalSearchDTO>>
    {
        private readonly IGlobalRepo _searchRepo;

        public GlobalSearchHandler(IGlobalRepo searchRepo)
        {
            _searchRepo = searchRepo;
        }

        public async Task<List<GlobalSearchDTO>> Handle(GlobalSearchQuery request, CancellationToken cancellationToken)
        {
            return await _searchRepo.GlobalSearch(request);
        }
    }
}