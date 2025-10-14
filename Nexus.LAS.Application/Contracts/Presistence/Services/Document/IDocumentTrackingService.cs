using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IDocumentTrackingService : IGenericService<DocumentTracking>
{
    Task<PagingResult<DocumentTrackingDto>> GetPaging(GetPagingDocumentTrackingQuery query);
    Task<DocumentTrackingDto> GetDtoById(int id);
    Task<bool> ExistsByRegisterAsync(string registerIdc, int registerIdn, int? excludedId);
}