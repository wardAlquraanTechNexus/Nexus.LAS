using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Domain.Constants;
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

        if (companyQuery.CompanyActivityIdn.HasValue)
        {
            companysQueryable = companysQueryable.Where(c => _context.CompaniesActivities.Any(ca => ca.CompanyId == c.Id && ca.Activity== companyQuery.CompanyActivityIdn));
        }

        if (companyQuery.CompanyContractTypeIdn.HasValue)
        {
            companysQueryable = companysQueryable.Where(c => _context.CompaniesContracts.Any(ca => ca.CompanyId == c.Id && ca.ContractType == companyQuery.CompanyContractTypeIdn));
        }

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
        entity.CompanyIdc = EntityIDCs.Company;
        entity.CompanyCode = "C000000";
        entity.CompanyStatus = (int)CompanyStatus.New;
        await _dbSet.AddAsync(entity);
        await _context.SaveChangesAsync();
        return entity.Id;
    }
    public async Task<Company> UpdateCompanyAsync(Company entity)
    {
        _dbSet.Attach(entity);
        _context.Entry(entity).State = EntityState.Modified;

        // Optionally, handle CompanyCode generation if status changed to Active
        if (entity.CompanyStatus == (int)CompanyStatus.Active && string.IsNullOrEmpty(entity.CompanyCode))
        {
            entity.CompanyCode = "PP" + entity.Id.ToString().PadLeft(6, '0');
        }
        entity.CompanyIdc = EntityIDCs.Company;

        await _context.SaveChangesAsync();
        return entity;
    }
}

