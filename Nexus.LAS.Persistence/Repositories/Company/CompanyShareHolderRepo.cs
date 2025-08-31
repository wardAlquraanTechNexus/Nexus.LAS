using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System.Data.SqlTypes;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyShareHolderRepo : GenericRepo<CompanyShareHolder>, ICompanyShareHolderRepo
{
    public CompanyShareHolderRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<CompanyShareHolderDto>> SearhDtoAsync(GetPagingCompanyShareHolderQuery query)
    {

        long numberOfShare = 0;
        if (query.CompanyId.HasValue)
        {
            numberOfShare = _context.CompaniesCapitals
                    .Where(c => c.CompanyId == query.CompanyId && c.CapitalActive)
                    .Select(c => c.NumberOfShares)
                    .FirstOrDefault() ?? 0;


        }

        var queryable =
                        (from sh in _dbSet
                         where !query.CompanyId.HasValue || sh.CompanyId == query.CompanyId
                         select new CompanyShareHolderDto
                         {
                             Id = sh.Id,
                             RegistersIdc = sh.RegistersIdc,
                             RegistersIdn = sh.RegistersIdn,
                             NumbersOfShares = sh.NumbersOfShares,
                             CompanyId = sh.CompanyId,
                             CessationDate = sh.CessationDate,
                             ShareHolderActive = sh.ShareHolderActive,
                             ShareHolderDate = sh.ShareHolderDate,
                             RegisterName = sh.RegistersIdc == EntityIDCs.Person
                                 ? _context.People
                                     .Where(p => p.Id == sh.RegistersIdn)
                                     .Select(p => p.PersonEnglishName)
                                     .FirstOrDefault()
                                 : _context.Companies
                                     .Where(c => c.Id == sh.RegistersIdn)
                                     .Select(c => c.CompanyEnglishName)
                                     .FirstOrDefault(),
                             SharePercent = (numberOfShare > 0 && sh.ShareHolderActive)
                                 ? Math.Round(((double)sh.NumbersOfShares / numberOfShare) * 100, 1)
                                 : 0
                         }).AsQueryable();



        int totalRecords = await queryable.CountAsync();

        queryable = queryable.OrderByDescending(x => x.ShareHolderActive);

        queryable = queryable.Paginate(query, out int page, out int pageSize);

        int totalPages = (int)Math.Ceiling((double)totalRecords / pageSize);

        List<CompanyShareHolderDto> data = new();
        try
        {
            data = await queryable.ToListAsync();
        }
        catch (SqlNullValueException ex)
        {
            //ignore
        }
        catch (Exception ex)
        {
            throw;
        }
        return new PagingResult<CompanyShareHolderDto>()
        {
            Collection = data,
            Page = page,
            PageSize = pageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }




    public async Task<List<CompanyShareHolder>> GetListByCompanyId(int company)
    {
        return await _dbSet.Where(x => x.CompanyId == company).ToListAsync();
    }

    public async Task<long> SumActiveSharesAsync(int company, int? excludeShareHolderId = null)
    {
        return await _dbSet.Where(x => x.CompanyId == company && x.ShareHolderActive && (!excludeShareHolderId.HasValue || x.Id != excludeShareHolderId)).Select(x => x.NumbersOfShares).SumAsync();
    }
}
