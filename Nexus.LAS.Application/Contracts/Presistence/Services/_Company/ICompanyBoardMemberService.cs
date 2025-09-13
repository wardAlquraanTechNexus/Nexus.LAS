using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyBoardMemberService:IGenericService<CompanyBoardMember>
{
    Task<bool> IsPersonActiveExist(int boardId, int personId, int? excludedId = null);
    Task<PagingResult<CompanyBoardMemberDto>> SearchDtoAsync(GetPagingCompanyBoardMemberQuery query);
}
