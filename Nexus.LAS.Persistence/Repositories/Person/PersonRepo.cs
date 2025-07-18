using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
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


        public async Task<PagingResult<Person>> GetAllPerson(GetAllPersonQuery personQuery)
        {
            var personsQueryable = _dbSet.Where(
                x => 
                (personQuery.Private == null || personQuery.Private == x.Private) 
                && (personQuery.Status== null || personQuery.Status == x.PersonStatus) 
                && (
                        personQuery.SearchBy == null 
                    || (x.PersonIdc.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonEnglishName) && x.PersonEnglishName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonArabicName) && x.PersonArabicName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    || (!string.IsNullOrEmpty(x.PersonShortName) && x.PersonShortName.ToLower().Contains(personQuery.SearchBy.ToLower()))
                    
                    ) 
                ).AsQueryable();

            int totalRecords = await personsQueryable.CountAsync();

            personsQueryable = personsQueryable.Paginate(personQuery.Page ,personQuery.PageSize);

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
    }
}
