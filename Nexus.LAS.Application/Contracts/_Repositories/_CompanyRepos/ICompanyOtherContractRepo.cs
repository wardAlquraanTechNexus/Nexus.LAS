using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts._Repositories
{
    public interface ICompanyOtherContractRepo : IGenericRepo<CompaniesOtherContract>
    {
        Task<List<CompaniesOtherContract>> GetListByCompanyId(int companyId);
    }
}