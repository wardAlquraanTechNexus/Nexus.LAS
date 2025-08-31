using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos
{
    public interface ICompanyPersonInChargeRepo: IGenericRepo<CompanyPersonInCharge>
    {
        Task<PagingResult<CompanyPersonInChargeDto>> GetPaging(GetPagingCompanyPersonInChargeQuery query);
    }
}
