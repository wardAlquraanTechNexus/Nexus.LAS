using AutoMapper;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging;

public class GetPagingFPCsODHandler
    : GetBasePagingHandler<FPCODDto, FPCOD, GetPagingFPCsODQuery, IFPCODService>
{
    public GetPagingFPCsODHandler(
        IFPCODService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }

    public override async Task<PagingResult<FPCODDto>> Handle(GetPagingFPCsODQuery request, CancellationToken cancellationToken)
    {
        return await _service.SearchDto(request);
    }
}