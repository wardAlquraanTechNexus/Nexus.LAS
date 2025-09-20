using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Queries.GetPaging;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.ExtensionMethods;

namespace Nexus.LAS.Persistence.Repositories.PropertyRepositories;

public class PropertyLinkRepo : GenericRepo<PropertyLink>, IPropertyLinkRepo
{
    public PropertyLinkRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<PropertyLinkDto>> GetPagingPropertyLinks(GetPagingPropertyLinkQuery query)
    {
        var propertyLinksQueryable = (
            from pl in _dbSet
            join p in _context.Properties on pl.RegisterIdn equals p.Id
            where
                (!query.PropertyLinksValue.HasValue || query.PropertyLinksValue == pl.PropertyLinksValue)
                select new PropertyLinkDto
                {
                    Id = pl.Id,
                    PropertyLinksRemarks = pl.PropertyLinksRemarks,
                    PropertyLinksValue = pl.PropertyLinksValue,
                    RegisterIdc = pl.RegisterIdc,
                    RegisterIdn = pl.RegisterIdn,
                    PropertyLinkedStatus = p.Status,
                    LocationDetails = p.LocationDetails,
                    PropertyLinkedCode = p.Code
                }
            );

        int totalRecords = await propertyLinksQueryable.CountAsync();

        propertyLinksQueryable = propertyLinksQueryable.Paginate(query.Page, query.PageSize);

       

        int totalPages = (int)Math.Ceiling((double)totalRecords / query.PageSize);

        var data = await propertyLinksQueryable.ToListAsync();


        return new PagingResult<PropertyLinkDto>
        {
            Collection = data,
            Page = query.Page,
            PageSize = query.PageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }
}