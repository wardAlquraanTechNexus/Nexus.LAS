using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos
{
    public interface ICompanyShareHolderRepo:IGenericRepo<CompanyShareHolder>
    {
        Task<PagingResult<CompanyShareHolderDto>> SearhDtoAsync(GetPagingCompanyShareHolderQuery query);
        Task<List<CompanyShareHolder>> GetListByCompanyId(int company);
        Task<long> SumActiveSharesAsync(int company, int? excludeShareHolderId = null);
        Task<PagingResult<AssetsShareholderDto>> GetShareholderAssets(GetShareholderAssetsQuery query);
    }
}
