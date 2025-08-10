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

    public async Task<List<DynamicList>> GetListAsync(GetDynamicListDTOQuery param)
    {
        var query = _dbSet.Where(dl =>
        (!param.Id.HasValue || param.Id == dl.Id) &&
        (param.MainListId == dl.MainListId) &&
        (!param.Rank.HasValue || param.Rank == dl.Rank) &&
        (!param.Active.HasValue || param.Active == dl.Active) &&
        (string.IsNullOrEmpty(param.MenuValue) || dl.LinkedCategory.Contains(param.MenuValue, StringComparison.OrdinalIgnoreCase))
        ).AsQueryable();


        query.OrderByDescending(dl => dl.Rank);

        var data = await query.ToListAsync();
        return data;
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

        return pathParts.AsEnumerable().Reverse().ToList();
    }


    public override async Task DeleteAsync(int id)
    {
        var toDelete = new List<DynamicList>();
        await GetDescendantsAndSelfAsync(id, toDelete);

        foreach (var item in toDelete)
        {
            item.IsDeleted = true;
            // optionally, update other fields like DeletedAt, DeletedBy, etc.
        }

        await _context.SaveChangesAsync();
    }

    private async Task GetDescendantsAndSelfAsync(int id, List<DynamicList> accumulator)
    {
        var node = await _dbSet.FirstOrDefaultAsync(dl => dl.Id == id);
        if (node == null)
            return;

        accumulator.Add(node);

        var children = await _dbSet.Where(dl => dl.MainListId == id).ToListAsync();

        foreach (var child in children)
        {
            await GetDescendantsAndSelfAsync(child.Id, accumulator);
        }
    }

    public async Task<bool> CheckMenuValueExist(string menuValue , int? mainListId, int? currentId = null)
    {
        var normalizedMenuValue = menuValue.ToLower();

        return await _dbSet.AnyAsync(x =>
            (!currentId.HasValue || x.Id != currentId) &&
            !string.IsNullOrEmpty(x.MenuValue) &&
            x.MenuValue.ToLower() == normalizedMenuValue &&
            x.MainListId == mainListId);
    }
}
