using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.GetGroupDTO;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class GroupRepo : GenericRepo<Group>
{
    public GroupRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<Group>> SearchGroup(SearchGroupQuery query)
    {
        var querable = _dbSet.Where(x =>
           (string.IsNullOrEmpty(query.GroupName) || x.GroupName.ToLower().Contains(query.GroupName.ToLower()))
           );

        int totalRecords = await querable.CountAsync();

        querable = querable.Paginate(query.Page, query.PageSize);

        var data = await querable.ToListAsync();

        return new PagingResult<Group>(data, query.Page, query.PageSize, totalRecords);

    }
    public async Task<PagingResult<Group>> GetGroupDTOs(GetGroupDtoQuery query)
    {
        var querable = _dbSet.Where(x =>
            (!query.Id.HasValue || x.Id == query.Id) &&
           (string.IsNullOrEmpty(query.GroupName) || x.GroupName.ToLower().Contains(query.GroupName.ToLower()))
           );

        int totalRecords = await querable.CountAsync();

        querable = querable.Paginate(query.Page, query.PageSize);

        var data = await querable.ToListAsync();

        return new PagingResult<Group>(data, query.Page, query.PageSize, totalRecords);

    }
}
