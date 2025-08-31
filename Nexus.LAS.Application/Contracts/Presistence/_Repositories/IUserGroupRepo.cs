using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
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
    }
}
