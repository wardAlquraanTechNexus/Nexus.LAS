using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyContractRepo : GenericRepo<CompanyContract>, ICompanyContractRepo
{
    public CompanyContractRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<CompanyContractDto>> SearhDtoAsync(GetPagingCompanyContractQuery param)
    {
        DateTime? periodDateBefore = null;
        DateTime? periodDateAfter = null;
        if (param.ExpiryDatePeriod.HasValue)
        {
            if (param.ExpiryDatePeriod >= 0)
            {
                periodDateAfter = DateTime.Now.AddDays(param.ExpiryDatePeriod.Value).Date;
                periodDateBefore = DateTime.Now.Date;
            }
            else
            {
                periodDateBefore = DateTime.Now.AddDays(param.ExpiryDatePeriod.Value).Date;
                periodDateAfter = DateTime.Now.Date;
            }
        }
        var queryable =
                    from cc in _dbSet
                    join rf in _context.RegisterFiles
                        on new { RegistersIdc = cc.CompaniesContractIdc, RegistersIdn = cc.Id }
                        equals new { RegistersIdc = rf.RegistersIdc, RegistersIdn = rf.RegistersIdn } into gj
                    from registerFile in gj.DefaultIfEmpty() // left join
                    where (cc.CompanyId == param.CompanyId)
                     && (!param.ExpiryDatePeriod.HasValue || (cc.ContractExpiryDate.HasValue && (cc.ContractExpiryDate.Value >= periodDateBefore && cc.ContractExpiryDate.Value <= periodDateAfter)))
                && (!param.ActiveReminder.HasValue || ((cc.ContractExpiryActiveReminder == param.ActiveReminder)))
                    select new CompanyContractDto
                    {
                        Id = cc.Id,
                        CompanyId = cc.CompanyId,
                        ContractType = cc.ContractType,
                        ContractStatus = cc.ContractStatus,
                        ContractExpiryActiveReminder = cc.ContractExpiryActiveReminder,
                        ContractExpiryDate = cc.ContractExpiryDate,
                        CommencementDate = cc.CommencementDate,
                        ContractDescription = cc.ContractDescription,
                        DocumentDate = cc.DocumentDate,
                        FileName = registerFile != null ? registerFile.Name : null,
                        ContentType = registerFile != null ? registerFile.ContentType : null,
                        Data = registerFile != null ? registerFile.Data : null,
                        FileId = registerFile != null ? registerFile.Id : null,
                    };


        var count = await queryable.CountAsync();
        queryable = queryable.Paginate(param.Page , param.PageSize);
        var data = await queryable.ToListAsync();
        return new PagingResult<CompanyContractDto>(data, param.Page, param.PageSize, count);
    }

    public async Task<List<CompanyContract>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyContract> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
