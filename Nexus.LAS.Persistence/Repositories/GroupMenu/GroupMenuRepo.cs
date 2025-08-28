using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class GroupMenuRepo : GenericRepo<GroupMenu> , IGroupMenuRepo
{
    public GroupMenuRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<SearchGroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query)
    {
        var querable = (from m in _context.Menus
                        join gm in _context.GroupsMenus on m.Id equals gm.MenuId
                        join g in _context.Groups on gm.GroupId equals g.Id
                        where (!query.MenuId.HasValue || query.MenuId == m.Id) &&
                       (!query.GroupId.HasValue || query.GroupId == g.Id) &&
                       (string.IsNullOrEmpty(query.MenuName) || m.Name.ToLower().Contains(query.MenuName.ToLower())) &&
                       (string.IsNullOrEmpty(query.GroupName) || g.GroupName.ToLower().Contains(query.GroupName.ToLower()))
                        select new SearchGroupMenuDTO()
                        {
                            Id = gm.Id,
                            GroupName = g.GroupName,
                            GroupId = g.Id,
                            MenuName = m.Name,
                            MenuId = m.Id,
                            Access = gm.Access,
                            CanInsert = gm.CanInsert,
                            CanDelete = gm.CanDelete,
                            CanUpdate = gm.CanUpdate,
                            Admin = gm.Admin,
                        }
                           ).AsQueryable();

        int totalRecords = await querable.CountAsync();

        if (!string.IsNullOrEmpty(query.OrderBy))
        {
            querable = querable.Order(query.OrderBy, query.OrderDir ?? "asc");
        }
        querable = querable.Paginate(query.Page, query.PageSize);
        



        var data = await querable.ToListAsync();

        return new PagingResult<SearchGroupMenuDTO>(data, query.Page, query.PageSize, totalRecords);
    }
    public async Task<List<SearchGroupMenuDTO>> GetAllGroupMenu(GetAllGroupMenuQuery query)
    {
        var querable = (from m in _context.Menus
                        join gm in _context.GroupsMenus on m.Id equals gm.MenuId
                        join g in _context.Groups on gm.GroupId equals g.Id
                        where (!query.MenuId.HasValue || query.MenuId == m.Id) &&
                       (!query.GroupId.HasValue || query.GroupId == g.Id) &&
                       (string.IsNullOrEmpty(query.MenuName) || m.Name.ToLower().Contains(query.MenuName.ToLower())) &&
                       (string.IsNullOrEmpty(query.GroupName) || g.GroupName.ToLower().Contains(query.GroupName.ToLower()))
                        select new SearchGroupMenuDTO()
                        {
                            Id = gm.Id,
                            GroupName = g.GroupName,
                            GroupId = g.Id,
                            MenuName = m.Name,
                            MenuId = m.Id,
                            Access = gm.Access,
                            CanInsert = gm.CanInsert,
                            CanDelete = gm.CanDelete,
                            CanUpdate = gm.CanUpdate,
                            Admin = gm.Admin,
                        }
                           ).AsQueryable();

        int totalRecords = await querable.CountAsync();

        if (!string.IsNullOrEmpty(query.OrderBy))
        {
            querable = querable.Order(query.OrderBy, query.OrderDir ?? "asc");
        }
        

        var data = await querable.ToListAsync();

        return data;
    }

    public async Task<bool> IsGroupMenuExist(int groupId , int menuId , int? id = null)
    {
        return await _dbSet.AnyAsync(x=>
        x.GroupId == groupId && 
        x.MenuId == menuId && 
        (!id.HasValue || x.Id == id));
    }
    public async Task<GroupMenu?> GetByGroupIdAndMenuIdAsync(int groupId , int menuId)
    {
        return await _dbSet.FirstOrDefaultAsync(x=>
        x.GroupId == groupId && 
        x.MenuId == menuId);
    }
}
