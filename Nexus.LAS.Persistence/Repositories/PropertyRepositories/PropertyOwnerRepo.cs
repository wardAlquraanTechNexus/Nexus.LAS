using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Constants;

namespace Nexus.LAS.Persistence.Repositories.PropertyRepositories;

public class PropertyOwnerRepo : GenericRepo<PropertyOwner>, IPropertyOwnerRepo
{
    public PropertyOwnerRepo(NexusLASDbContext context) : base(context)
    {
    }


    public async Task<List<PropertyOwnerDto>> GetOwnersByPropertyId(int propertyId)
    {
        var ownerQuery = _dbSet
            .Where(po => po.PropertyId == propertyId)
            .Select(x=> new PropertyOwnerDto
            {
                Id = x.Id,
                PropertyId = x.PropertyId,
                Relation = x.Relation,
                OwnStartDate = x.OwnStartDate,
                OwnFinishDate = x.OwnFinishDate,
                OwnActive = x.OwnActive,
                RegisterIdn = x.RegisterIdn,
                RegisterIdc = x.RegisterIdc,
            })
            .AsQueryable()
            .AsNoTracking();

        var owners = await ownerQuery.ToListAsync();

        var personIds = owners.Where(x => x.RegisterIdc == EntityIDCs.Person).Select(x => x.RegisterIdn);
        var companyIds = owners.Where(x => x.RegisterIdc == EntityIDCs.Company).Select(x => x.RegisterIdn);
        
        var personsQuery = _context.People
            .Where(p => personIds.Contains(p.Id))
            .AsNoTracking()
            .Select(x=> new { x.Id , x.PersonEnglishName });
        
        var companiesQuery = _context.Companies
            .Where(p => companyIds.Contains(p.Id))
            .AsNoTracking()
            .Select(x=> new { x.Id , x.CompanyEnglishName });


        foreach (var owner in owners)
        {
            if (owner.RegisterIdc == EntityIDCs.Person)
            {
                var person = await personsQuery.FirstOrDefaultAsync(p => p.Id == owner.RegisterIdn);
                if (person != null)
                {
                    owner.RegisterName = person.PersonEnglishName;
                    owner.OwnerType = "Person";
                }
            }
            else if (owner.RegisterIdc == EntityIDCs.Company)
            {
                var company = await companiesQuery.FirstOrDefaultAsync(c => c.Id == owner.RegisterIdn);
                if (company != null)
                {
                    owner.RegisterName = company.CompanyEnglishName;
                    owner.OwnerType = "Company";
                }
            }
        }


        return owners;


    }
}