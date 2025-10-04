using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetShared;

namespace Nexus.LAS.Persistence.Repositories.PropertyRepositories;

public class PropertyRepo : GenericRepo<Property>, IPropertyRepo
{
    public PropertyRepo(NexusLASDbContext context) : base(context)
    {
    }

    public override async Task<int> CreateAsync(Property entity)
    {
        await _dbSet.AddAsync(entity);
        await _context.SaveChangesAsync();
        entity.Code = EntityIDCs.Properties + entity.Id.ToString().PadLeft(6, '0');

        await _context.SaveChangesAsync();

        return entity.Id;
    }

    public async Task<PagingResult<Property>> GetPagingProperties(GetPagingPropertyQuery propertyQuery)
    {
        var propertiesQueryable = _dbSet.Where(
            prop =>
                (!propertyQuery.Privates.Any() || propertyQuery.Privates.Contains(prop.Private))
                && (!propertyQuery.Statuses.Any() || propertyQuery.Statuses.Contains((int)prop.Status))
                && (
                    propertyQuery.SearchBy == null
                    || (prop.PropertyIdc.ToLower().Contains(propertyQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(prop.Code) && prop.Code.ToLower().Contains(propertyQuery.SearchBy.ToLower()))
                )
                && (!propertyQuery.TypeOfTitle.HasValue || propertyQuery.TypeOfTitle == prop.TypeOfTitle)
                && (!propertyQuery.Type.HasValue || propertyQuery.Type == prop.Type)
                && (!propertyQuery.LocationCountryId.HasValue || propertyQuery.LocationCountryId == prop.LocationCountryId)
                && (!propertyQuery.LocationCityId.HasValue || propertyQuery.LocationCityId == prop.LocationCityId)
                && (!propertyQuery.LocationAreaId.HasValue || propertyQuery.LocationAreaId == prop.LocationAreaId)
                && (!propertyQuery.Purpose.HasValue || propertyQuery.Purpose == prop.Purpose)
        ).AsQueryable();

        int totalRecords = await propertiesQueryable.CountAsync();

        if (!string.IsNullOrEmpty(propertyQuery.OrderBy))
        {
            propertiesQueryable = propertiesQueryable.Order(propertyQuery.OrderBy, propertyQuery.OrderDir ?? "asc");
        }

        propertiesQueryable = propertiesQueryable.Paginate(propertyQuery.Page, propertyQuery.PageSize);

        int totalPages = (int)Math.Ceiling((double)totalRecords / propertyQuery.PageSize);

        var data = await propertiesQueryable.ToListAsync();

        return new PagingResult<Property>()
        {
            Collection = data,
            Page = propertyQuery.Page,
            PageSize = propertyQuery.PageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }

    public async Task<int> BulkChangeStatus(List<int> propertyIds, int status)
    {
        var properties = await _dbSet.Where(p => propertyIds.Contains(p.Id)).ToListAsync();
        foreach (var property in properties)
        {
            property.Status = (CommonStatus)status;
        }
        await _context.SaveChangesAsync();
        return properties.Count;
    }

    public async Task<int> BulkChangePrivate(List<int> propertyIds, bool privateValue)
    {
        var properties = await _dbSet.Where(p => propertyIds.Contains(p.Id)).ToListAsync();
        foreach (var property in properties)
        {
            property.Private = privateValue;
        }
        await _context.SaveChangesAsync();
        return properties.Count;
    }

    public async Task<PagingResult<SharedPropertyDTO>> GetSharedProperties(GetSharedPropertyQuery query)
    {
        var propertiesQueryable = (from prop in _dbSet
                                   join propOwner in _context.PropertyOwners on prop.Id equals propOwner.PropertyId
                                   where query.Idc == propOwner.RegisterIdc && query.Idn == propOwner.RegisterIdn
                                   select new SharedPropertyDTO
                                   {
                                       Code = prop.Code,
                                       TypeOfTitle = prop.TypeOfTitle,
                                       Type = prop.Type,
                                       LocationCountryId = prop.LocationCountryId,
                                       LocationCityId = prop.LocationCityId,
                                       LocationAreaId = prop.LocationAreaId,
                                       OwnActive = propOwner.OwnActive,
                                       OwnStartDate = propOwner.OwnStartDate,
                                       Relation = propOwner.Relation
                                   }
                        ).AsQueryable();
        int totalRecords = await propertiesQueryable.CountAsync();
        propertiesQueryable = propertiesQueryable.Paginate(query.Page, query.PageSize);
        var data = await propertiesQueryable.ToListAsync();
        return new PagingResult<SharedPropertyDTO>(data , query.Page, query.PageSize, totalRecords);
    }
}