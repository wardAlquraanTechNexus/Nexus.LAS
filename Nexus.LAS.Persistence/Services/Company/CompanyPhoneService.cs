using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyPhoneService : GenericService<CompanyPhone> , ICompanyPhoneService
{
    public CompanyPhoneService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyPhoneRepo repo) : base(context, userIdentityService, repo)
    {
    }

}
