using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.PropertyServices;

public class PropertyService : GenericService<Property>, IPropertyService
{
    private readonly IPropertyRepo _repo;
    public PropertyService(NexusLASDbContext context, IUserIdentityService userIdentityService, IPropertyRepo repo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }

    public async Task<PagingResult<Property>> GetPagingProperties(GetPagingPropertyQuery propertyQuery)
    {   
        return await _repo.GetPagingProperties(propertyQuery);
    }

    public async Task<int> BulkChangeStatus(List<int> propertyIds, int status)
    {
        return await _repo.BulkChangeStatus(propertyIds, status);
    }

    public async Task<int> BulkChangePrivate(List<int> propertyIds, bool privateValue)
    {
        return await _repo.BulkChangePrivate(propertyIds, privateValue);
    }
}