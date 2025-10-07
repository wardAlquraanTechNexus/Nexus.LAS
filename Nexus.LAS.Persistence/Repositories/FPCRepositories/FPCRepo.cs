using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
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
                    //&& (string.IsNullOrEmpty(query.TransactionCode) || query.TransactionCode == t.TransactionCode)
                    //&& (string.IsNullOrEmpty(query.SubjectDescription) || query.SubjectDescription == t.SubjectDescription)
                    //&& (!query.SubjectType.HasValue || query.SubjectType == t.SubjectType)
                    //&& (!query.TransactionDateFrom.HasValue || query.TransactionDateFrom <= t.TransactionDate)
                    //&& (!query.TransactionDateTo.HasValue || query.TransactionDateTo >= t.TransactionDate)
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