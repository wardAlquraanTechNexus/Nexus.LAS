using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyBoardMemberRepo : GenericRepo<CompanyBoardMember>, ICompanyBoardMemberRepo
{
    public CompanyBoardMemberRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<bool> IsPersonActiveExist(int boardId, int personId, int? excludedId = null)
    {
        return await _dbSet.AnyAsync(x => x.CompanyBoardId == boardId && x.PersonId == personId && x.IsActive && (excludedId == null || x.Id != excludedId));
    }
}
