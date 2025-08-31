using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos
{
    public interface ICompanyContractRepo: IGenericRepo<CompanyContract>
    {
        Task<List<CompanyContract>> GetListByCompanyId(int companyId);
        Task<PagingResult<CompanyContractDto>> SearhDtoAsync(GetPagingCompanyContractQuery query);
    }
}
