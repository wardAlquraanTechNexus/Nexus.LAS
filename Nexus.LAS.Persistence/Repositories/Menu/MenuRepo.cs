using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Domain.ViewModels.Menus;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories
{
    public class MenuRepo : GenericRepo<Menu>
    {
        public MenuRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<List<MenuGroupAuthorizeVM>> GetAllByUsername(string username)
        {
            var menus = await (from u in _context.Users
                               join ug in _context.UserGroups on u.Id equals ug.UserId
                               join g in _context.Groups on ug.GroupId equals g.Id
                               join gm in _context.GroupsMenus on g.Id equals gm.GroupId
                               join m in _context.Menus on gm.MenuId equals m.Id
                               where u.Username.ToLower() == username.ToLower()
                               group new { gm, m } by new
                               {
                                   m.Id,
                                   m.IconClass,
                                   m.Name,
                                   m.Path,
                                   m.ParentId,
                                   m.InDashboard,
                                   m.Rank
                               }
                               into gData
                               select new MenuGroupAuthorizeVM
                               {
                                   Id = gData.Max(x => x.gm.Id), // arbitrary pick (or Min if you prefer)
                                   MenuId = gData.Key.Id,
                                   IconClass = gData.Key.IconClass,
                                   Name = gData.Key.Name,
                                   Path = gData.Key.Path,
                                   MenuParentId = gData.Key.ParentId,
                                   InDashboard = gData.Key.InDashboard,
                                   Rank = gData.Key.Rank,

                                   // aggregate permissions (true if any group has it)
                                   Access = gData.Any(x => x.gm.Access),
                                   CanInsert = gData.Any(x => x.gm.CanInsert),
                                   CanUpdate = gData.Any(x => x.gm.CanUpdate),
                                   CanDelete = gData.Any(x => x.gm.CanDelete),
                                   Admin = gData.Any(x => x.gm.Admin)
                               })
                               .ToListAsync();

            return menus;
        }
        public async Task<List<MenuGroupAuthorizeVM>> GetAllByPathname(string path)
        {
            var menus = (from u in _context.Users
                         join ug in _context.UserGroups on u.Id equals ug.UserId
                         join g in _context.Groups on ug.GroupId equals g.Id
                         join gm in _context.GroupsMenus on g.Id equals gm.GroupId
                         join m in _context.Menus on gm.MenuId equals m.Id
                         where (!string.IsNullOrEmpty(m.Path) && m.Path.ToLower() == path.ToLower())
                         select new MenuGroupAuthorizeVM()
                         {
                             Access = gm.Access,
                             CanDelete = gm.CanDelete,
                             CanInsert = gm.CanInsert,
                             CanUpdate = gm.CanUpdate,
                             IconClass = m.IconClass,
                             MenuId = gm.MenuId,
                             Name = m.Name,
                             Path = m.Path,
                             MenuParentId = m.ParentId,
                             Username = u.Username
                         })
                   .Distinct().ToListAsync();

            return await menus;
        }

        public async Task<PagingResult<Menu>> GetListAsync(GetMenuDtoQuery param)
        {
            var query = _dbSet.Where(dl =>
            (!param.Id.HasValue || param.Id == dl.Id) &&
            (param.ParentId == dl.ParentId) &&
            (!param.Rank.HasValue || param.Rank == dl.Rank) &&
            (string.IsNullOrEmpty(param.Name) || dl.Name.ToLower().Contains(param.Name.ToLower()))
            ).AsQueryable();


            query.OrderByDescending(dl => dl.Rank);

            var totalRecords = await query.CountAsync();

            query = query.Paginate(param.Page, param.PageSize);

            var data = await query.ToListAsync();
            return new PagingResult<Menu>(data, param.Page, param.PageSize, totalRecords);
        }
        public async Task<PagingResult<Menu>> SearchMenu(GetMenuDtoQuery param)
        {
            var query = _dbSet.Where(dl =>
            (!param.Id.HasValue || param.Id == dl.Id) &&
            (!param.ParentId.HasValue || param.ParentId == dl.ParentId) &&
            (!param.Rank.HasValue || param.Rank == dl.Rank) &&
            (string.IsNullOrEmpty(param.Name) || dl.Name.ToLower().Contains(param.Name.ToLower()))
            ).AsQueryable();


            query.OrderByDescending(dl => dl.Rank);

            var totalRecords = await query.CountAsync();

            query = query.Paginate(param.Page, param.PageSize);

            var data = await query.ToListAsync();
            return new PagingResult<Menu>(data, param.Page, param.PageSize, totalRecords);
        }


        public async Task<List<Menu>> GetParents(int id)
        {
            var pathParts = new List<Menu>();
            var currentId = id;

            Menu? item = null;
            while (currentId != 0)
            {
                item = await _dbSet
                    .Where(dl => dl.Id == currentId)
                    .FirstOrDefaultAsync();

                if (item == null)
                    break;

                // Move to parent id (LinkedCategory)

                pathParts.Add(item);
                currentId = item.ParentId ?? 0;

            }

            return pathParts.AsEnumerable().Reverse().ToList();
        }

    }
}
