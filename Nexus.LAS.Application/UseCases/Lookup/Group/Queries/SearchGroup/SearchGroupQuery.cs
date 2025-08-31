using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.GetGroupDTO
{
    public class SearchGroupQuery : BaseParams, IRequest<PagingResult<Group>>
    {
        public string? GroupName { get; set; }
    }
}
