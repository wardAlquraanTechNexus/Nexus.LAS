using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Identity.Services;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyChamberOfCommerceService : GenericService<CompanyChamberOfCommerce> , ICompanyChamberOfCommerceService
{
    public CompanyChamberOfCommerceService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyChamberOfCommerceRepo repo) : base(context,userIdentityService, repo)
    {
    }

    
}
