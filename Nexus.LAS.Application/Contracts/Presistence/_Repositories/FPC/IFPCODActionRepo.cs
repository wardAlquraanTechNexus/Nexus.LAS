using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IFPCODActionRepo : IGenericRepo<FPCODAction>
    {
        Task<PagingResult<FPCODActionDto>> SearhDtoAsync(GetPagingFPCsODsActionQuery query);
    }
}