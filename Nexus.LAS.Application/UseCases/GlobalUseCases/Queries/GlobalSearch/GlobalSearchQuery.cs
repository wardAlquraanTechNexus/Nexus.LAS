using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalSearch
{
    public class GlobalSearchQuery: BaseParams , IRequest<List<GlobalSearchDTO>>
    {
        public string Search { get; set; }
    }
}
