using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserUseCases.Queries
{
    public class SearchUserQueryHandler : IRequestHandler<SearchUserQuery, PagingResult<UserDto>>
    {
        private readonly IUserService _service;

        public SearchUserQueryHandler(IUserService service)
        {
            _service = service;
        }

        public async Task<PagingResult<UserDto>> Handle(SearchUserQuery request, CancellationToken cancellationToken)
        {
            var users = await _service.GetUserDTOs(request);

            return users;
        }
    }
}
