using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos
{
    public interface ICompanyLicenseRepo: IGenericRepo<CompanyLicense>
    {
        Task<PagingResult<CompanyLicenseDto>> GetPaging(GetCompanyLicensePagingQuery param);
    }
}
