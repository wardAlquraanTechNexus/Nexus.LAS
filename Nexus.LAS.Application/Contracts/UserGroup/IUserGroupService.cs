using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts
{
    public interface IUserGroupService:IGenericService<UserGroup>
    {
        Task<PagingResult<UserGroupDTO>> GetUserGroupDTO(GetUsetGroupDTOQuery query);
        Task<List<UserGroupDTO>> GerAllUserGroupDTO(GetAllUsetGroupDTOQuery query);
        Task<bool> ExistsByGroupIdAndUserIdAsync(int userId, int groupId, int? currentId = null);
        Task<bool> UpsertCollectionOfUsers(UpsertCollectionOfUsersCommand command);
    }
}
