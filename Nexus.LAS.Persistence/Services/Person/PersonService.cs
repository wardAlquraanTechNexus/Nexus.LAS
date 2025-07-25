using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
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
    }
}
