using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.SearchMenu
{
    public class SearchGroupMenuHandler : IRequestHandler<SearchGroupMenuQuery , PagingResult<SearchGroupMenuDTO>>
    {
        private readonly IGroupMenuService _service;

        public SearchGroupMenuHandler(IGroupMenuService service)
        {
            _service = service;
        }

        public async Task<PagingResult<SearchGroupMenuDTO>> Handle(SearchGroupMenuQuery request, CancellationToken cancellationToken)
        {
            return await _service.SearchGroupMenus(request);
        }
    }
}
