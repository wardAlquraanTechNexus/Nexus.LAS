using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyContractService : GenericService<CompaniesContract> , ICompanyContractService
{
    public CompanyContractService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyContractRepo repo) : base(context, userIdentityService , repo)
    {
    }

}
