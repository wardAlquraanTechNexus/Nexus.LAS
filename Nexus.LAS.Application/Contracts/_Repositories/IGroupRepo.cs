using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.GetGroupDTO;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts._Repositories
{
    public interface IGroupRepo:IGenericRepo<Group>
    {
        Task<PagingResult<Group>> SearchGroup(SearchGroupQuery query);
        Task<PagingResult<Group>> GetGroupDTOs(GetGroupDtoQuery query);

    }
}
