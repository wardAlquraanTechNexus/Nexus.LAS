using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries
{
    public class GetAllUsetGroupDTOHandler: IRequestHandler<GetAllUsetGroupDTOQuery, List<UserGroupDTO>>
    {
        private readonly IUserGroupService _service;

        public GetAllUsetGroupDTOHandler(IUserGroupService service)
        {
            _service = service;
        }

        public async Task<List<UserGroupDTO>> Handle(GetAllUsetGroupDTOQuery query, CancellationToken cancellationToken)
        {
            return await _service.GerAllUserGroupDTO(query);
        }
    }
}
