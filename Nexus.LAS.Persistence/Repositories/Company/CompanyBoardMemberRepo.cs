using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyBoardMemberRepo : GenericRepo<CompaniesBoardMember>, ICompanyBoardMemberRepo
{
    public CompanyBoardMemberRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesBoardMember>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesBoardMember> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
