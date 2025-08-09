using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class DynamicListRepo : GenericRepo<DynamicList>
{
    public DynamicListRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<DynamicList>> GetListAsync(GetDynamicListDTOQuery param)
    {
        var query = _dbSet.Where(dl =>
        (!param.Id.HasValue || param.Id == dl.Id) &&
        (param.MainListId == dl.MainListId) &&
        (!param.Rank.HasValue || param.Rank == dl.Rank) &&
        (!param.Active.HasValue || param.Active == dl.Active) &&
        (string.IsNullOrEmpty(param.MenuValue) || dl.LinkedCategory.Contains(param.MenuValue, StringComparison.OrdinalIgnoreCase))
        ).AsQueryable();

        var totalRecords = await query.CountAsync();

        query = query.Paginate(param.Page , param.PageSize);

        query.OrderByDescending(dl => dl.Rank);

        var data = await query.ToListAsync();
        return new PagingResult<DynamicList>(data, param.Page, param.PageSize, totalRecords);
    }

    public async Task<List<DynamicList>> GetParents(int id)
    {
        var pathParts = new List<DynamicList>();
        var currentId = id;

        DynamicList? item = null;
        while (currentId != 0)
        {
            item = await _dbSet
                .Where(dl => dl.Id == currentId)
                .FirstOrDefaultAsync();

            if (item == null)
                break;

            // Move to parent id (LinkedCategory)
            
            pathParts.Add(item);
            currentId = item.MainListId ?? 0;

        }

        return pathParts;
    }
}
