using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.Lookup;
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
            var menus = (from u in _context.Users
                         join ug in _context.UserGroups on u.Id equals ug.UserId
                         join g in _context.Groups on ug.GroupId equals g.Id
                         join gm in _context.GroupsMenus on g.Id equals gm.GroupId
                         join m in _context.Menus on gm.MenuId equals m.Id
                         where u.Username.ToLower() == username.ToLower()
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
                         })
                   .Distinct().ToListAsync();
                   
            return await menus;
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
    }
}
