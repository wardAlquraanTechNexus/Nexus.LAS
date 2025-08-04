using EFCore.BulkExtensions;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPerson;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonService : GenericService<Person>, IPersonService
    {
        public PersonService(NexusLASDbContext context , IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
        }

        public async Task<PagingResult<Person>> GetAllPerson(GetAllPersonQuery personQuery)
        {
            PersonRepo personRepo = new PersonRepo(_context);
            return await personRepo.GetAllPerson(personQuery);
        }
        public async Task<PagingResult<Person>> GetAllActivePerson(GetAllActivePersonQuery personQuery)
        {
            PersonRepo personRepo = new PersonRepo(_context);
            return await personRepo.GetAllActivePerson(personQuery);
        }

        public async override Task<int> CreateAsync(Person entity)
        {
            PersonRepo personRepo = new PersonRepo(_context);
            return await personRepo.CreateAsync(entity);
        }
        public async Task<Person> UpdatePersonAsync(Person entity)
        {
            PersonRepo personRepo = new PersonRepo(_context);
            return await personRepo.UpdatePersonAsync(entity);
        }

        public async Task<int> BulkChangeStatus(List<int> personIds, int status)
        {
            using var transaction = await _context.Database.BeginTransactionAsync();

            try
            {
                var persons = await BulkEditProperty<int>(personIds , nameof(Person.PersonStatus) , status);
                await transaction.CommitAsync();
                return persons.Count;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }
        public async Task<int> BulkChangePrivate(List<int> personIds, bool isPrivate)
        {
            using var transaction = await _context.Database.BeginTransactionAsync();

            try
            {
                var persons = await BulkEditProperty<bool>(personIds, nameof(Person.Private), isPrivate);
                await transaction.CommitAsync();
                return persons.Count;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }

        public async Task<bool> IsPersonEnglishNameUniqueAsync(string personEnglishName, int? excludeId = null)
        {
            var query = _context.People.Where(p => p.PersonEnglishName == personEnglishName);
            
            if (excludeId.HasValue)
            {
                query = query.Where(p => p.Id != excludeId.Value);
            }
            
            return !await query.AnyAsync();
        }

        public async Task<bool> IsPersonArabicNameUniqueAsync(string personArabicName, int? excludeId = null)
        {
            var query = _context.People.Where(p => p.PersonArabicName == personArabicName);
            
            if (excludeId.HasValue)
            {
                query = query.Where(p => p.Id != excludeId.Value);
            }
            
            return !await query.AnyAsync();
        }

        public async Task<bool> IsPersonShortNameUniqueAsync(string personShortName, int? excludeId = null)
        {
            var query = _context.People.Where(p => p.PersonShortName == personShortName);
            
            if (excludeId.HasValue)
            {
                query = query.Where(p => p.Id != excludeId.Value);
            }
            
            return !await query.AnyAsync();
        }

        private async Task<List<Person>> BulkEditProperty<V>(List<int> personIds, string propertyName , V value)
        {
            var people = await _context.People.Where(x => personIds.Contains(x.Id)).ToListAsync();
            var property = typeof(Person).GetProperty(propertyName);
            foreach (var person in people)
            {
                property.SetValue(person, value);
            }
            await _context.BulkInsertOrUpdateAsync(people);
            return people;
        }
    }
}
