using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;
using Nexus.LAS.Application.UseCases.SearchUseCases;
using Nexus.LAS.Application.DTOs;

namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IGlobalService
    {
        Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query);
        Task<List<GlobalInfoDTO>> GlobalInfo();
        Task<PagingResult<GlobalDocumentExpiredDto>> GlobalDocumentExpired(GetGlobalExpiredDocumentQuery request);
        Task<byte[]> ExportToExcel();
    }
}
