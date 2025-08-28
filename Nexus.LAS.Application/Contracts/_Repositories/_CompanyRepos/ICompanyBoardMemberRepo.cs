using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

public interface ICompanyBoardMemberRepo : IGenericRepo<CompaniesBoardMember>
{
    Task<List<CompaniesBoardMember>> GetListByCompanyId(int companyId);
}