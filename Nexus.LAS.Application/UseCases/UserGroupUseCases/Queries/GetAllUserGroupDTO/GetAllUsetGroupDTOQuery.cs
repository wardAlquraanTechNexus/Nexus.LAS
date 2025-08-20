using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries
{
    public class GetAllUsetGroupDTOQuery: BaseParams, IRequest<List<UserGroupDTO>>
    {
        public string? Username { get; set; }
        public string? GroupName { get; set; }
        public int? UserId { get; set; }
        public int? GroupId { get; set; }
        public string? OrderBy { get; set; }
        public string? OrderDir { get; set; }
    }
}
