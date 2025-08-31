using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyBankAccountService : GenericService<CompanyBankAccount> , ICompanyBankAccountService
{
    public CompanyBankAccountService(NexusLASDbContext context, IUserIdentityService userIdentityService , ICompanyBankAccountRepo repo) : base(context, userIdentityService ,repo)
    {
    }

    public override async Task DeleteAsync(int id)
    {
        var repo = new CompanyBankAccountRepo(_context);
        await repo.DeleteAsync(id);
    }
}
