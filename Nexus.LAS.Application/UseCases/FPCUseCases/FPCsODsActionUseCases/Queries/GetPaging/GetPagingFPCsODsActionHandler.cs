using AutoMapper;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Queries.GetPaging;

public class GetPagingFPCsODsActionHandler
    : GetBasePagingHandler<FPCODActionDto, FPCODAction, GetPagingFPCsODsActionQuery, IFPCODActionService>
{
    public GetPagingFPCsODsActionHandler(
        IFPCODActionService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }

    public override async Task<PagingResult<FPCODActionDto>> Handle(GetPagingFPCsODsActionQuery request, CancellationToken cancellationToken)
    {
        return await _service.SearhDtoAsync(request);
    }
}