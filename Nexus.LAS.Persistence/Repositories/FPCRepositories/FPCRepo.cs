using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.FPCUseCases;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.FPCRepositories;

public class FPCRepo : GenericRepo<FPC>, IFPCRepo
{
    public FPCRepo(NexusLASDbContext context) : base(context)
    {
    }
    public async Task<FPCDto?> GetDtoByIdAsync(int id)
    {
        var queryable =
                (from t in _dbSet
                 where t.Id == id
                 select new FPCDto
                 {
                     Id = t.Id,
                     FpcCode = t.FpcCode,
                     FpcStatus = t.FpcStatus,
                     Private = t.Private,
                     RegisterIdc = t.RegisterIdc,
                     RegisterIdn = t.RegisterIdn,
                     CreatedAt = t.CreatedAt,
                     CreatedBy = t.CreatedBy,
                     ModifiedAt = t.ModifiedAt,
                     ModifiedBy = t.ModifiedBy,
                 }).AsQueryable().AsNoTracking();

        var fpc = await queryable.FirstOrDefaultAsync();

        if (fpc != null)
        {
            if(fpc.RegisterIdc == EntityIDCs.Person)
            {
                var person = await _context.People
                    .Where(p => p.Id == fpc.RegisterIdn)
                    .Select(p => new { p.PersonEnglishName, p.PersonArabicName, p.PersonShortName, p.PersonCode })
                    .AsQueryable()
                    .FirstOrDefaultAsync()
                    ;
                fpc.RegisterEnglishName = person?.PersonEnglishName;
                fpc.RegisterArabicName = person?.PersonArabicName;
                fpc.RegisterShortName = person?.PersonShortName;
                fpc.RegisterCode = person?.PersonCode;

            }
            else if(fpc.RegisterIdc == EntityIDCs.Company)
            {
                var company = await _context.Companies
                    .Where(c => c.Id == fpc.RegisterIdn)
                    .Select(c => new { c.CompanyEnglishName, c.CompanyArabicName, c.CompanyShortName, c.CompanyCode })
                    .AsQueryable()
                    .FirstOrDefaultAsync()
                    ;

                fpc.RegisterEnglishName = company?.CompanyEnglishName;
                fpc.RegisterArabicName = company?.CompanyArabicName;
                fpc.RegisterShortName = company?.CompanyShortName;
                fpc.RegisterCode = company?.CompanyCode;
            }
        }

        return fpc;
    }
    
    public async Task<PagingResult<FPCDto>> SearchFPCs(GetPagingFPCQuery query)
    {
        var queryable =
                from t in _dbSet
                where
                    (!query.Privates.Any() || query.Privates.Contains(t.Private))
                    && (!query.Statuses.Any() || query.Statuses.Contains(t.FpcStatus))
                    && (
                        query.SearchBy == null
                        || (t.FpcCode.ToLower().Contains(query.SearchBy.ToLower()))
                    )
                    && (string.IsNullOrEmpty(query.RegisterIdc) || query.RegisterIdc == t.RegisterIdc)
                    && (!query.RegisterIdn.HasValue || query.RegisterIdn == t.RegisterIdn)
                    && (!query.ExecludedId.HasValue || query.ExecludedId != t.Id)
                select new FPCDto
                {
                    Id = t.Id,
                    FpcCode = t.FpcCode,
                    FpcStatus = t.FpcStatus,
                    Private = t.Private,
                    RegisterIdc = t.RegisterIdc,
                    RegisterIdn = t.RegisterIdn,
                    CreatedAt = t.CreatedAt,
                    CreatedBy = t.CreatedBy,
                    ModifiedAt = t.ModifiedAt,
                    ModifiedBy = t.ModifiedBy,
                };

        if (!string.IsNullOrEmpty(query.OrderBy))
        {
            queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
        }

        int totalRecords = await queryable.CountAsync();

        queryable = queryable.Paginate(query.Page, query.PageSize);

        var data = await queryable.ToListAsync();

        return new PagingResult<FPCDto>(data, query.Page, query.PageSize, totalRecords);
    }
    public async Task<List<FPCDto>> GetAllFPCs(GetAllFPCQuery query)
    {
        var queryable =
                from t in _dbSet
                where
                    (!query.Privates.Any() || query.Privates.Contains(t.Private))
                    && (!query.Statuses.Any() || query.Statuses.Contains(t.FpcStatus))
                    && (
                        query.SearchBy == null
                        || (t.FpcCode.ToLower().Contains(query.SearchBy.ToLower()))
                    )
                    && (string.IsNullOrEmpty(query.RegisterIdc) || query.RegisterIdc == t.RegisterIdc)
                    && (!query.RegisterIdn.HasValue || query.RegisterIdn == t.RegisterIdn)
                    && (!query.ExecludedId.HasValue || query.ExecludedId != t.Id)
                select new FPCDto
                {
                    Id = t.Id,
                    FpcCode = t.FpcCode,
                    FpcStatus = t.FpcStatus,
                    Private = t.Private,
                    RegisterIdc = t.RegisterIdc,
                    RegisterIdn = t.RegisterIdn,
                    CreatedAt = t.CreatedAt,
                    CreatedBy = t.CreatedBy,
                    ModifiedAt = t.ModifiedAt,
                    ModifiedBy = t.ModifiedBy,
                };

        if (!string.IsNullOrEmpty(query.OrderBy))
        {
            queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
        }


        var data = await queryable.ToListAsync();

        return data;
    }

    public override async Task<int> CreateAsync(FPC entity)
    {
        entity.FpcCode = EntityIDCs.FPCs + entity.Id.ToString().PadLeft(6, '0');
        var id = await base.CreateAsync(entity);
        entity.Id = id;
        entity.FpcCode = EntityIDCs.FPCs + entity.Id.ToString().PadLeft(6, '0');
        await _context.SaveChangesAsync();
        return id;
    }

    public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
    {
        var properties = await _dbSet.Where(p => ids.Contains(p.Id)).ToListAsync();
        foreach (var property in properties)
        {
            property.FpcStatus = status;
        }
        await _context.SaveChangesAsync();
        return properties.Count;
    }

    public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
    {
        var properties = await _dbSet.Where(p => ids.Contains(p.Id)).ToListAsync();
        foreach (var property in properties)
        {
            property.Private = privateValue;
        }
        await _context.SaveChangesAsync();
        return properties.Count;
    }

}