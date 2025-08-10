using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyActivityService : GenericService<CompaniesActivity> , ICompanyActivityService
{
    public CompanyActivityService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
    {
    }
    public override async Task DeleteAsync(int id)
    {
        var repo = new CompanyActivityRepo(_context);
        await repo.DeleteAsync(id);
    }
}
