using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos
{
    public interface ICompanyOtherContractRepo : IGenericRepo<CompaniesOtherContract>
    {
        Task<List<CompaniesOtherContract>> GetListByCompanyId(int companyId);
    }
}