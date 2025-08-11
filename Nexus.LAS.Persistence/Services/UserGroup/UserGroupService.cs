using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
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
    public class UserGroupService : GenericService<UserGroup> , IUserGroupService
    {
        public UserGroupService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
        }

        public async Task<PagingResult<UserGroupDTO>> GetUserGroupDTO(GetUsetGroupDTOQuery query)
        {
            UserGroupRepo repo = new UserGroupRepo(_context);
            return await repo.GerUserGroupDTO(query);
        }

        public async Task<bool> ExistsByGroupIdAndUserIdAsync(int userId , int groupId , int? currentId = null)
        {
            UserGroupRepo repo = new UserGroupRepo(_context);
            return await repo.ExistsByGroupIdAndUserIdAsync(userId , groupId , currentId);
        }
    }
}
