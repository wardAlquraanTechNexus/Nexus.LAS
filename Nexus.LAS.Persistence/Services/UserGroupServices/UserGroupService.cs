using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Lookup.UserGroupUseCases.Queries.GetAllUsersByGroup;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public class UserGroupService : GenericService<UserGroup>, IUserGroupService
    {
        private readonly IUserGroupRepo _repo;
        public UserGroupService(NexusLASDbContext context, IUserIdentityService userIdentityService,IUserGroupRepo repo) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }

        public async Task<PagingResult<UserGroupDTO>> GetUserGroupDTO(GetUsetGroupDTOQuery query)
        {
            return await _repo.GetUserGroupDTO(query);
        }
        public async Task<List<UserGroupDTO>> GerAllUserGroupDTO(GetAllGroupsByUserQuery query)
        {
            return await _repo.GerAllUserGroupDTO(query);
        }

        public async Task<bool> ExistsByGroupIdAndUserIdAsync(int userId, int groupId, int? currentId = null)
        {
            return await _repo.ExistsByGroupIdAndUserIdAsync(userId, groupId, currentId);
        }

      
        public async Task<bool> UpsertCollectionOfUsers(UpsertCollectionOfUsersGroupsCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {

                try
                {
                    foreach (var user in command.Users)
                    {
                        var userGroup = await _repo.GetByGroupIdAndUserIdAsync(user.Id, command.GroupId);

                        if (userGroup is null && user.IsChecked)
                        {

                            await _repo.CreateAsync(new UserGroup()
                            {
                                UserId = user.Id,
                                GroupId = command.GroupId,
                            });

                        }
                        else if (userGroup != null && !user.IsChecked)
                        {
                            await _repo.DeleteAsync(userGroup.Id);
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

        public async Task<PagingResult<UserGroupDTO>> GetAllGrouByUser(GetAllGroupsByUserQuery query)
        {
            return await _repo.GetAllGroupsByUser(query);
        }
        public async Task<PagingResult<UserGroupDTO>> GetAllUsersByGroup(GetAllUsersByGroupQuery query)
        {
            return await _repo.GetAllUsersByGroup(query);
        }
    }
}
