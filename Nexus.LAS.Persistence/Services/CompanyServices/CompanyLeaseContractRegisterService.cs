using Nexus.LAS.Application.Contracts.Presistence.Services._Company;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.CompanyServices;

public class CompanyLeaseContractRegisterService : GenericService<CompanyLeaseContractRegister>, ICompanyLeaseContractRegisterService
{
    public CompanyLeaseContractRegisterService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyLeaseContractRegisterRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}