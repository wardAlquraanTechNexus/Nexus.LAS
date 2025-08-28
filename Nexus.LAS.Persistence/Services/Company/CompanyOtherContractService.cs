using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyOtherContractService : GenericService<CompaniesOtherContract> , ICompanyOtherContractService
{
    public CompanyOtherContractService(NexusLASDbContext context, IUserIdentityService userIdentityService,ICompanyOtherContractRepo repo) : base(context, userIdentityService,repo)
    {
    }

}
