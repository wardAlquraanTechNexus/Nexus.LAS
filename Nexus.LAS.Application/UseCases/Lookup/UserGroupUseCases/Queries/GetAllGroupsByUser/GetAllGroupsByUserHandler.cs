using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries
{
    public class GetAllGroupsByUserHandler: IRequestHandler<GetAllGroupsByUserQuery, PagingResult<UserGroupDTO>>
    {
        private readonly IUserGroupService _service;

        public GetAllGroupsByUserHandler(IUserGroupService service)
        {
            _service = service;
        }

        public async Task<PagingResult<UserGroupDTO>> Handle(GetAllGroupsByUserQuery query, CancellationToken cancellationToken)
        {
            return await _service.GetAllGrouByUser(query);
        }
    }
}
