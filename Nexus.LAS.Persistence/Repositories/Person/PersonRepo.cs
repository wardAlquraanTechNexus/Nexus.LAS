using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class PersonRepo : GenericRepo<Person>
    {
        public PersonRepo(NexusLASDbContext context) : base(context)
        {
        }


        public async Task<PagingResult<Person>> GetPersons(GetPersonsQuery personQuery)
        {
            var personsQueryable = _dbSet.Where(
                x =>
                (!personQuery.Privates.Any() || personQuery.Privates.Contains(x.Private))
                && (!personQuery.Statuses.Any() || (x.PersonStatus.HasValue && personQuery.Statuses.Contains(x.PersonStatus.Value)))
                && (
                        personQuery.SearchBy == null
                    || (x.PersonIdc.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonEnglishName) && x.PersonEnglishName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonArabicName) && x.PersonArabicName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonShortName) && x.PersonShortName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonCode) && x.PersonCode.ToLower().Contains(personQuery.SearchBy.ToLower()))

                    )
                ).AsQueryable();

            int totalRecords = await personsQueryable.CountAsync();

            personsQueryable = personsQueryable.Paginate(personQuery.Page, personQuery.PageSize);

            if (!string.IsNullOrEmpty(personQuery.OrderBy))
            {
                personsQueryable = personsQueryable.Order(personQuery.OrderBy,personQuery.OrderDir ?? "asc");
            }

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
        public async Task<PagingResult<Person>> GetAllActivePerson(GetAllActivePersonQuery personQuery)
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
            entity.PersonIdc = "PP000000";
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
                if(entity.PersonStatus == (int)PersonStatus.Active)
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
}
