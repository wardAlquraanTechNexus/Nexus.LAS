using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Domain.Entities.UserGroupEntities;

namespace Nexus.LAS.Application.UseCases.UserUseCases.Queries
{
    public class SearchUserQuery:BaseParams, IRequest<PagingResult<User>>
    {
        public string? Username { get; set; }
    }
}
