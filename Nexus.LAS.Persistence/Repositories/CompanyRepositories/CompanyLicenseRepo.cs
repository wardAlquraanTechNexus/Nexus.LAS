using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyLicenseRepo : GenericRepo<CompanyLicense> , ICompanyLicenseRepo
{
    public CompanyLicenseRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<CompanyLicense>> GetPaging(GetCompanyLicensePagingQuery param)
    {
        var queryable = _dbSet.Where(cl => 
        (!param.CompanyId.HasValue || cl.CompanyIdn == param.CompanyId.Value)
        );

        var count = await queryable.CountAsync();

        queryable = queryable.Paginate(param.Page, param.PageSize);
        var data = await queryable.ToListAsync();   
        return new PagingResult<CompanyLicense>(data,param.Page , param.PageSize , count);
    }
}
