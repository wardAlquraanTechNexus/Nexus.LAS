using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetAll;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm
{
    public interface ILawFirmService : IGenericService<LawFirm>
    {
        Task<PagingResult<LawFirmDto>> GetPagingLawFirms(GetPagingLawFirmQuery query);
        Task<List<LawFirmDto>> GetAllLawFirms(GetAllLawFirmQuery query);
        Task<int> BulkChangePrivate(List<int> ids, bool privateValue);
        Task<int> BulkChangeStatus(List<int> ids, CommonStatus status);
        Task<LawFirmDto?> GetDTOById(int id);
        Task<byte[]> ExportToPdf(int id);
    }
}