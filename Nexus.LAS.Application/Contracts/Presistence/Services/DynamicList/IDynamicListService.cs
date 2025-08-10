using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;
using Nexus.LAS.Domain.Entities.Lookup;


namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IDynamicListService:IGenericService<DynamicList>
{
    Task<PagingResult<DynamicList>> GetListAsync(GetDynamicListDTOQuery param);
    Task<List<DynamicList>> GetParents(int id);
}
