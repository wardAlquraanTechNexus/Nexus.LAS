using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.Queries
{
    public class GetGroupDtoQuery : BaseParams, IRequest<PagingResult<GroupDTO>>
    {
        public int? Id { get; set; }
        public string? GroupName { get; set; }    
    }
}
