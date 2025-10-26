using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Lookup.UserGroupUseCases.Queries.GetAllUsersByGroup;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IUserGroupRepo:IGenericRepo<UserGroup>
    {
        Task<PagingResult<UserGroupDTO>> GetUserGroupDTO(GetUsetGroupDTOQuery query);
        Task<PagingResult<UserGroupDTO>> GetAllGroupsByUser(GetAllGroupsByUserQuery query);
        Task<PagingResult<UserGroupDTO>> GetAllUsersByGroup(GetAllUsersByGroupQuery query);
        Task<List<UserGroupDTO>> GerAllUserGroupDTO(GetAllGroupsByUserQuery query);
        Task<bool> ExistsByGroupIdAndUserIdAsync(int userId, int groupId, int? currentId = null);
        Task<UserGroup?> GetByGroupIdAndUserIdAsync(int userId, int groupId);
    }
}
