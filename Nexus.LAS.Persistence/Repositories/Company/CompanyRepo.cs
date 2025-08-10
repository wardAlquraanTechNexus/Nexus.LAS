using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries.GetAllActiveCompany;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyRepo : GenericRepo<Company>
{
    public CompanyRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<Company>> GetCompanies(GetCompaniesQuery companyQuery)
    {
        var companysQueryable = _dbSet.Where(
            x =>
            (!companyQuery.Privates.Any() || companyQuery.Privates.Contains(x.Private))
            && (!companyQuery.Statuses.Any() || (x.CompanyStatus.HasValue && companyQuery.Statuses.Contains(x.CompanyStatus.Value)))
            && (
                    companyQuery.SearchBy == null
                || (x.CompanyIdc.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyEnglishName) && x.CompanyEnglishName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyArabicName) && x.CompanyArabicName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyShortName) && x.CompanyShortName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyCode) && x.CompanyCode.ToLower().Contains(companyQuery.SearchBy.ToLower()))

                )
            ).AsQueryable();

        int totalRecords = await companysQueryable.CountAsync();

        companysQueryable = companysQueryable.Paginate(companyQuery.Page, companyQuery.PageSize);

        if (!string.IsNullOrEmpty(companyQuery.OrderBy))
        {
            companysQueryable = companysQueryable.Order(companyQuery.OrderBy, companyQuery.OrderDir ?? "asc");
        }

        int totalPages = (int)Math.Ceiling((double)totalRecords / companyQuery.PageSize);

        var data = await companysQueryable.ToListAsync();

        return new PagingResult<Company>()
        {
            Collection = data,
            Page = companyQuery.Page,
            PageSize = companyQuery.PageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }
    public async Task<PagingResult<Company>> GetActiveCompanies(GetActiveCompaniesQuery companyQuery)
    {
        var companysQueryable = _dbSet.Where(
            x =>
            (companyQuery.Private == null || companyQuery.Private == x.Private)
            && (x.CompanyStatus == (int)CompanyStatus.Active)
            && (
                    companyQuery.SearchBy == null
                || (x.CompanyIdc.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyEnglishName) && x.CompanyEnglishName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyArabicName) && x.CompanyArabicName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.CompanyShortName) && x.CompanyShortName.ToLower().Contains(companyQuery.SearchBy.ToLower()))

                )
            ).AsQueryable();

        int totalRecords = await companysQueryable.CountAsync();

        companysQueryable = companysQueryable.Paginate(companyQuery.Page, companyQuery.PageSize);

        int totalPages = (int)Math.Ceiling((double)totalRecords / companyQuery.PageSize);

        var data = await companysQueryable.ToListAsync();

        return new PagingResult<Company>()
        {
            Collection = data,
            Page = companyQuery.Page,
            PageSize = companyQuery.PageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }

    public override async Task<int> CreateAsync(Company entity)
    {
        entity.CompanyIdc = "C000000";
        entity.CompanyCode = "C000000";
        entity.CompanyStatus = (int)CompanyStatus.New;
        await _dbSet.AddAsync(entity);
        await _context.SaveChangesAsync();
        return entity.Id;
    }
    public async Task<Company> UpdateCompanyAsync(Company entity)
    {
        var oldEntity = await _dbSet.FindAsync(entity.Id);

        if (oldEntity is null)
            throw new Exception("Not found company");

        // Only update if values actually changed
        if (oldEntity.CompanyEnglishName != entity.CompanyEnglishName)
            oldEntity.CompanyEnglishName = entity.CompanyEnglishName;

        if (oldEntity.CompanyArabicName != entity.CompanyArabicName)
            oldEntity.CompanyArabicName = entity.CompanyArabicName;

        if (oldEntity.CompanyShortName != entity.CompanyShortName)
            oldEntity.CompanyShortName = entity.CompanyShortName;

        if (oldEntity.CompanyStatus != entity.CompanyStatus)
        {
            oldEntity.CompanyStatus = entity.CompanyStatus;
            if (entity.CompanyStatus == (int)CompanyStatus.Active)
            {
                oldEntity.CompanyCode = "PP" + entity.Id.ToString().PadLeft(6, '0');

            }
        }

        if (oldEntity.Private != entity.Private)
            oldEntity.Private = entity.Private;

        //_context.Entry(entity).State = EntityState.Modified;

        await _context.SaveChangesAsync();
        return oldEntity;
    }
}
