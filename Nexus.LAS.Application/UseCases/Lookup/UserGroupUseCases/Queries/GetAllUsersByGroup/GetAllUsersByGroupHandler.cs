using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.UserGroupUseCases.Queries.GetAllUsersByGroup
{
    public class GetAllUsersByGroupHandler : IRequestHandler<GetAllUsersByGroupQuery, PagingResult<UserGroupDTO>>
    {
        private readonly IUserGroupService _service;

        public GetAllUsersByGroupHandler(IUserGroupService service)
        {
            _service = service;
        }

        public async Task<PagingResult<UserGroupDTO>> Handle(GetAllUsersByGroupQuery query, CancellationToken cancellationToken)
        {
            return await _service.GetAllUsersByGroup(query);
        }
    }

}
