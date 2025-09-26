using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm
{
    public interface ILawFirmService : IGenericService<LawFirm>
    {
        Task<PagingResult<LawFirm>> GetPagingLawFirms(GetPagingLawFirmQuery query);
        Task<int> BulkChangePrivate(List<int> ids, bool privateValue);
        Task<int> BulkChangeStatus(List<int> ids, CommonStatus status);
    }
}