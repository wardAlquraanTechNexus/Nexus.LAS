using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Domain.Entities.UserGroupEntities;

namespace Nexus.LAS.Application.UseCases.UserUseCases.Queries
{
    public class SearchUserQuery:BaseParams, IRequest<PagingResult<UserDto>>
    {
        public string? Username { get; set; }
        public string? Email { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public int? PersonId { get; set; }
    }
}
