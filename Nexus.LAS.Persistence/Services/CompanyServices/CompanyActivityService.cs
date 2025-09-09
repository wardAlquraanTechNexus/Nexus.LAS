using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyActivityService : GenericService<CompanyActivity> , ICompanyActivityService
{
    public CompanyActivityService(NexusLASDbContext context, IUserIdentityService userIdentityService , ICompanyActivityRepo repo) : base(context, userIdentityService , repo)
    {
    }
    
}
