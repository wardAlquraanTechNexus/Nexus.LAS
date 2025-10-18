using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries
{
    public class GlobalSearchQuery: BaseParams , IRequest<List<GlobalSearchDTO>>
    {
        public string Search { get; set; }
    }
}
