using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IFPCsODRepo : IGenericRepo<FPCOD>
    {
        Task<PagingResult<FPCODDto>> SearchDto(GetPagingFPCsODQuery query);
    }
}