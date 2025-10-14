using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.DocumentServices;

public class DocumentTrackingService : GenericService<DocumentTracking>, IDocumentTrackingService
{
    private readonly IDocumentTrackingRepo _repo;
    public DocumentTrackingService(NexusLASDbContext context, IUserIdentityService userIdentityService, IDocumentTrackingRepo repo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }

    public async Task<PagingResult<DocumentTrackingDto>> GetPaging(GetPagingDocumentTrackingQuery query)
    {
        return await _repo.GetPaging(query);
    }

    public Task<DocumentTrackingDto> GetDtoById(int id)
    {
        return _repo.GetDtoById(id);
    }

    public async Task<bool> ExistsByRegisterAsync(string registerIdc, int registerIdn, int? excludedId)
    {
        return await _repo.ExistsByRegisterAsync(registerIdc, registerIdn, excludedId);
    }
}