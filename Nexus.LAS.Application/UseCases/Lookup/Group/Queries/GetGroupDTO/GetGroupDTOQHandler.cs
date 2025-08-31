using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Queries;

namespace Nexus.LAS.Application.UseCases
{
    public class GetGroupDTOQHandler : IRequestHandler<GetGroupDtoQuery , PagingResult<GroupDTO>>
    {
        private readonly IGroupService _groupService;
        private readonly IMapper _mapper;

        public GetGroupDTOQHandler(IGroupService groupService, IMapper mapper)
        {
            _groupService = groupService;
            _mapper = mapper;
        }

        public async Task<PagingResult<GroupDTO>> Handle(GetGroupDtoQuery request, CancellationToken cancellationToken)
        {
            var data = await _groupService.GetGroupDTOs(request);
            return new PagingResult<GroupDTO>(data.Collection.Select(x => _mapper.Map<GroupDTO>(x)).ToList(), data.Page, data.PageSize, data.TotalRecords);
        }

    }
}
