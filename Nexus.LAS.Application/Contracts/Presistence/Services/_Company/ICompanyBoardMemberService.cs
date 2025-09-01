using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyBoardMemberService:IGenericService<CompanyBoardMember>
{
    Task<bool> IsPersonActiveExist(int boardId, int personId, int? excludedId = null);
}
