using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;

namespace Nexus.LAS.Application.UseCases.Queries
{
    public class GetAllGroupMenuHandler : IRequestHandler<GetAllGroupMenuQuery, List<SearchGroupMenuDTO>>
    {
        private readonly IGroupMenuService _service;

        public GetAllGroupMenuHandler(IGroupMenuService service)
        {
            _service = service;
        }

        public async Task<List<SearchGroupMenuDTO>> Handle(GetAllGroupMenuQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetAllGroupMenus(request);
        }
    }
}
