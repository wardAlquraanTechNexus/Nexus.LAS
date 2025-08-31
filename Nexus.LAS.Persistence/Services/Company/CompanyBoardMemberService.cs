using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyBoardMemberService : GenericService<CompaniesBoardMember> , ICompanyBoardMemberService
{
    public CompanyBoardMemberService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyBoardMemberRepo repo) : base(context, userIdentityService, repo)
    {
    }

    public override async Task DeleteAsync(int id)
    {
        var repo = new CompanyBoardMemberRepo(_context);
        await repo.DeleteAsync(id);
    }
}
