using DocumentFormat.OpenXml.Math;
using DocumentFormat.OpenXml.Spreadsheet;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Commands;
using Nexus.LAS.Application.UseCases.Lookup.Queries.GetAllMenusByGroup;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class GroupMenuService : GenericService<GroupMenu>, IGroupMenuService
{
    private readonly IGroupMenuRepo _repo;
    public GroupMenuService(NexusLASDbContext context, IUserIdentityService userIdentityService , IGroupMenuRepo repo) : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }

    public async Task<PagingResult<GroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query)
    {
        return await _repo.SearchGroupMenus(query);
    }
    public async Task<List<GroupMenuDTO>> GetAllGroupMenus(GetAllGroupMenuQuery query)
    {
        return await _repo.GetAllGroupMenu(query);
    }


    public async Task<bool> IsGroupMenuExist(int groupId , int menuId , int? id = null)
    {
        return await _repo.IsGroupMenuExist(groupId , menuId , id);
    }


    public async Task<bool> UpsertCollectionOfMenus(UpsertCollectionOfGroupsMenusCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {

            try
            {
                foreach (var menu in command.Menus)
                {
                    var gorupMenu = await _repo.GetByGroupIdAndMenuIdAsync(command.GroupId , menu.Id);

                    if (gorupMenu is null && menu.IsChecked)
                    {

                        await _repo.CreateAsync(new GroupMenu()
                        {
                            MenuId = menu.Id,
                            GroupId = command.GroupId,
                            CanInsert = menu.CanInsert,
                            CanDelete = menu.CanDelete,
                            CanUpdate = menu.CanUpdate,
                            Admin = menu.Admin,
                            Access = menu.Access,
                        });

                    }
                    else if (gorupMenu != null && !menu.IsChecked)
                    {
                        await _repo.DeleteAsync(gorupMenu.Id);
                    }
                    else if(gorupMenu is not null)
                    {
                        gorupMenu.CanInsert = menu.CanInsert;
                        gorupMenu.CanDelete = menu.CanDelete;
                        gorupMenu.CanUpdate = menu.CanUpdate;
                        gorupMenu.Admin = menu.Admin;
                        gorupMenu.Access = menu.Access;
                        await _repo.UpdateAsync(gorupMenu);
                    }

                }

                await transaction.CommitAsync();
                return true;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }

    }

    public async Task<PagingResult<GroupMenuDTO>> GetAllMenusByGroup(GetAllMenusByGroupQuery query)
    {
        return await _repo.GetAllMenusByGroup(query);
    }
}
