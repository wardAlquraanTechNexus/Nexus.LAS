using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalExpiredDocument;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalSearch;

namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IGlobalService
    {
        Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query);
        Task<List<GlobalInfoDTO>> GlobalInfo();
        Task<PagingResult<GlobalDocumentExpiredDto>> GlobalDocumentExpired(GetGlobalExpiredDocumentQuery request);
        Task<byte[]> ExportToExcel();
        Task<bool> DeactivateReminderAsync(string subIdc, int id);
    }
}
