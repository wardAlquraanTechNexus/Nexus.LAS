using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IFPCService : IGenericService<FPC>
{
    Task<PagingResult<FPCDto>> SearchFPCs(GetPagingFPCQuery query);
    Task<int> BulkChangeStatus(List<int> ids, CommonStatus status);
    Task<int> BulkChangePrivate(List<int> ids, bool privateValue);
    Task<FPCDto?> GetDtoByIdAsync(int id);
}