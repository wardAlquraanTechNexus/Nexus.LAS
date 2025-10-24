using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalExpiredDocument;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalSearch;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IGlobalRepo
    {
        Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query);
        Task<List<GlobalInfoDTO>> GlobalInfo();
        Task<PagingResult<GlobalDocumentExpiredDto>> GlobalDocumentExpired(GetGlobalExpiredDocumentQuery request);
        Task<List<GlobalDocumentExpiredDto>> GlobalAllDocumentExpired(GetGlobalExpiredDocumentQuery request);
        Task<bool> DeactivateReminderAsync(string subIdc, int id);
    }
}
