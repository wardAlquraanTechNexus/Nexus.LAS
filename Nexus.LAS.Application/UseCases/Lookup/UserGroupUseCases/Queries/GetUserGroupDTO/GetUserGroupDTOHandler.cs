using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries
{
    public class GetUserGroupDTOHandler : IRequestHandler<GetUsetGroupDTOQuery , PagingResult<UserGroupDTO>>
    {
        private readonly IUserGroupService _service;

        public GetUserGroupDTOHandler(IUserGroupService service)
        {
            _service = service;
        }

        public async Task<PagingResult<UserGroupDTO>> Handle(GetUsetGroupDTOQuery query  , CancellationToken cancellationToken)
        {
            return await _service.GetUserGroupDTO(query);
        }
    }
}
