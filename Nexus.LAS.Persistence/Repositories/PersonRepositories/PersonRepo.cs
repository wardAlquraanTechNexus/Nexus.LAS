using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.Models;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
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
        var personsQueryable = _dbSet.Where(
            person =>
            (!personQuery.Id.HasValue || personQuery.Id.Value == person.Id)
            && (!personQuery.Privates.Any() || personQuery.Privates.Contains(person.Private))
            && (!personQuery.Statuses.Any() || (person.PersonStatus.HasValue && personQuery.Statuses.Contains(person.PersonStatus.Value)))
            && (
                    personQuery.SearchBy == null
                || (person.PersonIdc.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonEnglishName) && person.PersonEnglishName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonArabicName) && person.PersonArabicName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonShortName) && person.PersonShortName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                || (!string.IsNullOrEmpty(person.PersonCode) && person.PersonCode.ToLower().Contains(personQuery.SearchBy.ToLower()))

                )
            ).AsQueryable();

        if (personQuery.Nationality.HasValue)
        {
            personsQueryable = personsQueryable.Where(x =>
                _context.PersonsAddresses.Any(address => address.PersonsIdn == x.Id &&
                                                         address.POBoxCountry == personQuery.Nationality));
        }

        if (personQuery.IsLdStaff.HasValue)
        {
            IQueryable<Person> filteredPersons;
            if (personQuery.IsLdStaff.Value)
            {
                filteredPersons = from person in personsQueryable
                                  join user in _context.Users
                                      on person.Id equals user.PersonsIdN
                                  join userGroup in _context.UserGroups
                                      on user.Id equals userGroup.UserId
                                  where userGroup.GroupId == _appSettings.Value.LdStaffId
                                  select person;
            }
            else
            {
                filteredPersons = from person in personsQueryable
                                      join user in _context.Users
                                          on person.Id equals user.PersonsIdN into userGroupJoin
                                      from user in userGroupJoin.DefaultIfEmpty()
                                      join userGroup in _context.UserGroups
                                          on user != null ? user.Id : 0 equals userGroup.UserId into userGroupJoin2
                                      from userGroup in userGroupJoin2.DefaultIfEmpty()
                                      where userGroup == null || userGroup.GroupId != _appSettings.Value.LdStaffId
                                      select person;
            }
            personsQueryable = filteredPersons.Distinct().AsQueryable();
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
            && (x.PersonStatus == (int)PersonStatus.Active)
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

    public override async Task<int> CreateAsync(Person entity)
    {
        entity.PersonCode = "PP000000";
        entity.PersonStatus = (int)PersonStatus.New;
        await _dbSet.AddAsync(entity);
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
            if (entity.PersonStatus == (int)PersonStatus.Active)
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
