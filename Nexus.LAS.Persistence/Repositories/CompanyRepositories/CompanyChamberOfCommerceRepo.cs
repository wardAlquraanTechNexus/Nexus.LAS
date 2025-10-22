using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyChamberOfCommerceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyChamberOfCommerceRepo : GenericRepo<CompanyChamberOfCommerce>, ICompanyChamberOfCommerceRepo
{
    private readonly NexusLASDbContext _context;

    public CompanyChamberOfCommerceRepo(NexusLASDbContext context) : base(context)
    {
        _context = context;
    }

    public async Task<PagingResult<CompanyChamberOfCommerceDto>> SearhDtoAsync(GetPagingCompanyChamberOfCommerceQuery param)
    {
        DateTime? periodDateBefore = null;
        DateTime? periodDateAfter = null;
        if (param.CciExpiryDatePeriod.HasValue)
        {
            if (param.CciExpiryDatePeriod >= 0)
            {
                periodDateAfter = DateTime.Now.AddDays(param.CciExpiryDatePeriod.Value).Date;
                periodDateBefore = DateTime.Now.Date;
            }
            else
            {
                periodDateBefore = DateTime.Now.AddDays(param.CciExpiryDatePeriod.Value).Date;
                periodDateAfter = DateTime.Now.Date;
            }
        }

        var queryable =
            from ccc in _dbSet
            join rf in _context.RegisterFiles
                on new { RegistersIdc = ccc.CompanyChamberOfCommerceIdc, RegistersIdn = ccc.Id }
                equals new { RegistersIdc = rf.RegistersIdc, RegistersIdn = rf.RegistersIdn } into gj
            from registerFile in gj.DefaultIfEmpty()
            where (ccc.CompanyIdn == param.CompanyIdn)
             && (!param.CciExpiryDatePeriod.HasValue || (ccc.CciExpiryDate.HasValue && (ccc.CciExpiryDate.Value >= periodDateBefore && ccc.CciExpiryDate.Value <= periodDateAfter)))
                && (!param.CciExpiryActiveReminder.HasValue || (ccc.CciExpiryActiveReminder == param.CciExpiryActiveReminder))
            select new CompanyChamberOfCommerceDto
            {
                Id = ccc.Id,
                CompanyIdn = ccc.CompanyIdn,
                CciExpiryActiveReminder = ccc.CciExpiryActiveReminder,
                CciExpiryDate = ccc.CciExpiryDate,
                CciIssueDate = ccc.CciIssueDate,
                CciNumber = ccc.CciNumber,
                CciPassword = ccc.CciPassword,
                CciUsername = ccc.CciUsername,
                FileName = registerFile != null ? registerFile.Name : null,
                ContentType = registerFile != null ? registerFile.ContentType : null,
                Data = registerFile != null ? registerFile.Data : null
            };

        var count = await queryable.CountAsync();
        queryable = queryable.Skip((param.Page) * param.PageSize).Take(param.PageSize);
        var data = await queryable.ToListAsync();
        return new PagingResult<CompanyChamberOfCommerceDto>(data, param.Page, param.PageSize, count);
    }

    public async Task<List<CompanyChamberOfCommerce>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyChamberOfCommerce> queryable = _dbSet.Where(x => x.CompanyIdn == companyId);
        return await queryable.ToListAsync();
    }
}
