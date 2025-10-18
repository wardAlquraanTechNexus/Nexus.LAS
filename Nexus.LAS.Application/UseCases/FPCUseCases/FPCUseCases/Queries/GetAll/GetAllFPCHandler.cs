using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.FPCUseCases;

public class GetAllFPCHandler
    : GetAllBaseHandler<FPCDto, FPC, GetAllFPCQuery, IFPCService>
{
    public GetAllFPCHandler(
        IFPCService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }

    public override async Task<List<FPCDto>> Handle(GetAllFPCQuery request, CancellationToken cancellationToken)
    {
        return await _service.GetAllFPCs(request);
    }
}