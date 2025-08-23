using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyRepo : GenericRepo<Company>, ICompanyRepo
{
    public CompanyRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<Company>> GetCompanies(GetCompaniesQuery companyQuery)
    {
        var companysQueryable = _dbSet.Where(
            com =>
            (!companyQuery.Privates.Any() || companyQuery.Privates.Contains(com.Private))
            && (!companyQuery.Statuses.Any() || (companyQuery.Statuses.Contains(com.CompanyStatus)))
            && (
                    companyQuery.SearchBy == null
                || (com.CompanyIdc.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(com.CompanyEnglishName) && com.CompanyEnglishName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(com.CompanyArabicName) && com.CompanyArabicName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(com.CompanyShortName) && com.CompanyShortName.ToLower().Contains(companyQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(com.CompanyCode) && com.CompanyCode.ToLower().Contains(companyQuery.SearchBy.ToLower()))

                )
            && (!companyQuery.CapitalAmount.HasValue || companyQuery.CapitalAmount == com.CapitalAmount)
            && (!companyQuery.TotalShares.HasValue || companyQuery.TotalShares == com.TotalShares)
            && (!companyQuery.NumberOfPartners.HasValue || companyQuery.NumberOfPartners == com.NumberOfPartners)
            && (!companyQuery.CompanyTypeIdn.HasValue || companyQuery.CompanyTypeIdn == com.CompanyTypeIdn)
            && (!companyQuery.CompanyClassIdn.HasValue || companyQuery.CompanyClassIdn == com.CompanyClassIdn)
            && (!companyQuery.PlaceOfRegistrationMainIdn.HasValue || companyQuery.PlaceOfRegistrationMainIdn == com.PlaceOfRegistrationMainIdn)
            && (!companyQuery.PlaceOfRegistrationSubIdn.HasValue || companyQuery.PlaceOfRegistrationSubIdn == com.PlaceOfRegistrationSubIdn)
                
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
