using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos
{
    public interface IPersonIdDetailRepo : IGenericRepo<PersonsIDDetail>
    {
        Task<PagingResult<PersonIdDetailDto>> GetPaging(GetPersonIdDetailPagingQuery param);
    }
}