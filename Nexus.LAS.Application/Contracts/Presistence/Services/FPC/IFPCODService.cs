using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IFPCODService : IGenericService<FPCOD>
{
    Task<PagingResult<FPCODDto>> SearchDto(GetPagingFPCsODQuery query);
}