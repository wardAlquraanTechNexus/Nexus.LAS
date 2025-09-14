using AutoMapper;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;

public class GetPagingFPCHandler
    : GetBasePagingHandler<FPCDto, FPC, GetPagingFPCQuery, IFPCService>
{
    public GetPagingFPCHandler(
        IFPCService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}