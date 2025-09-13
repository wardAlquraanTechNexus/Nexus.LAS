using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

public interface ICompanyBoardMemberRepo : IGenericRepo<CompanyBoardMember>
{
    Task<bool> IsPersonActiveExist(int boardId, int personId, int? excludedId = null);
    Task<PagingResult<CompanyBoardMemberDto>> SearchDtoAsync(GetPagingCompanyBoardMemberQuery query);
}