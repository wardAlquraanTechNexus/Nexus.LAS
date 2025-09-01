using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

public interface ICompanyBoardMemberRepo : IGenericRepo<CompanyBoardMember>
{
    Task<bool> IsPersonActiveExist(int boardId, int personId, int? excludedId = null);
}