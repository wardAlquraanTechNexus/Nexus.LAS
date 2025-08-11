using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.GetGroupDTO;
using Nexus.LAS.Domain.Entities.Lookup;


namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IGroupService:IGenericService<Group>
    {
        Task<PagingResult<Group>> SearchGroup(SearchGroupQuery query);
    }
}
