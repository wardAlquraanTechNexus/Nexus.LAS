using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.Models;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPersonsByCompanyId;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class PersonRepo : GenericRepo<Person>, IPersonRepo
{
    private readonly IOptions<AppSettings> _appSettings;
    public PersonRepo(NexusLASDbContext context, IOptions<AppSettings> appSettings) : base(context)
    {
        _appSettings = appSettings;
    }


    public async Task<PagingResult<Person>> GetPersons(GetPersonsQuery personQuery)
    {

        var personsQueryable = _dbSet.AsQueryable().AsNoTracking();
        if (personQuery.Id.HasValue)
        {
            personsQueryable = personsQueryable.Where(person => personQuery.Id.Value == person.Id);
        }
        if (!string.IsNullOrEmpty(personQuery.SearchBy))
        {
                       personsQueryable = personsQueryable.Where(
                person =>
                (person.PersonIdc.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonEnglishName) && person.PersonEnglishName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonArabicName) && person.PersonArabicName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonShortName) && person.PersonShortName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonCode) && person.PersonCode.ToLower().Contains(personQuery.SearchBy.ToLower()))
                );
        }

        if(!string.IsNullOrEmpty(personQuery.PersonEnglishName))
        {
            personsQueryable = personsQueryable.Where(person => person.PersonEnglishName != null && person.PersonEnglishName.ToLower() == personQuery.PersonEnglishName.ToLower());
        }

        if (!string.IsNullOrEmpty(personQuery.PersonArabicName))
        {
            personsQueryable = personsQueryable.Where(person => person.PersonArabicName != null && person.PersonArabicName.ToLower() == personQuery.PersonArabicName.ToLower());
        }

        if (!string.IsNullOrEmpty(personQuery.PersonShortName))
        {
            personsQueryable = personsQueryable.Where(person => person.PersonShortName != null && person.PersonShortName.ToLower() == personQuery.PersonShortName.ToLower());
        }

        if (personQuery.Nationality.HasValue)
        {
            personsQueryable = personsQueryable.Where(person => person.Nationality == personQuery.Nationality.Value);
        }

        if (personQuery.Privates.Any())
        {
            personsQueryable = personsQueryable.Where(person => personQuery.Privates.Contains(person.Private));
        }

        if(personQuery.Statuses.Any())
        {
            personsQueryable = personsQueryable.Where(person => personQuery.Statuses.Contains(person.PersonStatus.Value));
        }
        

        int totalRecords = await personsQueryable.CountAsync();

        if (!string.IsNullOrEmpty(personQuery.OrderBy))
        {
            personsQueryable = personsQueryable.Order(personQuery.OrderBy, personQuery.OrderDir ?? "asc");
        }
        personsQueryable = personsQueryable.Paginate(personQuery.Page, personQuery.PageSize);


        int totalPages = (int)Math.Ceiling((double)totalRecords / personQuery.PageSize);

        var data = await personsQueryable.ToListAsync();

        return new PagingResult<Person>()
        {
            Collection = data,
            Page = personQuery.Page,
            PageSize = personQuery.PageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }
    public async Task<List<Person>> GetAllPersons(GetAllPersonsQuery personQuery)
    {
        var personsQueryable = _dbSet.Where(
            person =>
            (!personQuery.Id.HasValue || personQuery.Id.Value == person.Id)
            && (
                    personQuery.SearchBy == null
                || (person.PersonIdc.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonEnglishName) && person.PersonEnglishName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonArabicName) && person.PersonArabicName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonShortName) && person.PersonShortName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonCode) && person.PersonCode.ToLower().Contains(personQuery.SearchBy.ToLower()))

                )
            ).AsQueryable();

        return await personsQueryable.ToListAsync();


        
    }
    public async Task<PagingResult<Person>> GetActivePersons(GetAllActivePersonQuery personQuery)
    {
        var personsQueryable = _dbSet.Where(
            x =>
            (personQuery.Private == null || personQuery.Private == x.Private)
            && (x.PersonStatus == CommonStatus.Active)
            && (
                    personQuery.SearchBy == null
                || (x.PersonIdc.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.PersonEnglishName) && x.PersonEnglishName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.PersonArabicName) && x.PersonArabicName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(x.PersonShortName) && x.PersonShortName.ToLower().Contains(personQuery.SearchBy.ToLower()))

                )
            ).AsQueryable();

        int totalRecords = await personsQueryable.CountAsync();

        personsQueryable = personsQueryable.Paginate(personQuery.Page, personQuery.PageSize);

        int totalPages = (int)Math.Ceiling((double)totalRecords / personQuery.PageSize);

        var data = await personsQueryable.ToListAsync();

        return new PagingResult<Person>()
        {
            Collection = data,
            Page = personQuery.Page,
            PageSize = personQuery.PageSize,
            TotalPages = totalPages,
            TotalRecords = totalRecords
        };
    }

    public async Task<List<PersonDto>> GetAllPersonsCompany(GetAllPersonsCompanyQuery query)
    {
        var q = (from p in _dbSet
                 join pc in _context.CompaniesPersonInCharges on p.Id equals pc.PersonIdn
                 where pc.CompanyIdn == query.CompanyId
                 && (!query.PersonId.HasValue || p.Id == query.PersonId.Value)
                    && (string.IsNullOrEmpty(query.PersonName)
                        || (!string.IsNullOrEmpty(p.PersonEnglishName) && p.PersonEnglishName.ToLower().Contains(query.PersonName.ToLower()))
                        || (!string.IsNullOrEmpty(p.PersonArabicName) && p.PersonArabicName.ToLower().Contains(query.PersonName.ToLower()))
                        || (!string.IsNullOrEmpty(p.PersonShortName) && p.PersonShortName.ToLower().Contains(query.PersonName.ToLower()))
                        )
                 select new PersonDto
                 {
                     Id = p.Id,
                     PersonCode = p.PersonCode,
                     PersonEnglishName = p.PersonEnglishName,
                     PersonArabicName = p.PersonArabicName,
                     PersonShortName = p.PersonShortName,
                     CompanyId = pc.CompanyIdn,
                 }
                 )
                 .Distinct()
                 .AsNoTracking()
                 .AsQueryable();


        return await q.ToListAsync();
    }

    public override async Task<int> CreateAsync(Person entity)
    {
        entity.PersonStatus = CommonStatus.New;
        entity.PersonCode = "PP" + entity.Id.ToString().PadLeft(6, '0');
        await _dbSet.AddAsync(entity);
        await _context.SaveChangesAsync();
        entity.PersonCode = "PP" + entity.Id.ToString().PadLeft(6, '0');

        await _context.SaveChangesAsync();

        return entity.Id;
    }
    public async Task<Person> UpdatePersonAsync(Person entity)
    {
        var oldEntity = await _dbSet.FindAsync(entity.Id);

        if (oldEntity is null)
            throw new Exception("Not found person");

        // Only update if values actually changed
        if (oldEntity.PersonEnglishName != entity.PersonEnglishName)
            oldEntity.PersonEnglishName = entity.PersonEnglishName;

        if (oldEntity.PersonArabicName != entity.PersonArabicName)
            oldEntity.PersonArabicName = entity.PersonArabicName;

        if (oldEntity.PersonShortName != entity.PersonShortName)
            oldEntity.PersonShortName = entity.PersonShortName;

        if (oldEntity.PersonStatus != entity.PersonStatus)
        {
            oldEntity.PersonStatus = entity.PersonStatus;
            if (entity.PersonStatus == CommonStatus.Active)
            {
                oldEntity.PersonCode = "PP" + entity.Id.ToString().PadLeft(6, '0');

            }
        }

        if (oldEntity.Private != entity.Private)
            oldEntity.Private = entity.Private;

        //_context.Entry(entity).State = EntityState.Modified;

        await _context.SaveChangesAsync();
        return oldEntity;
    }
}
