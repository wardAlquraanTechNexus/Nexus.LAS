using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts._Repositories
{
    public interface IPersonRepo: IGenericRepo<Person>
    {
        Task<PagingResult<Person>> GetPersons(GetPersonsQuery personQuery);
        Task<PagingResult<Person>> GetActivePersons(GetAllActivePersonQuery personQuery);
        Task<Person> UpdatePersonAsync(Person entity);
        Task<List<Person>> GetAllPersons(GetAllPersonsQuery personQuery);
    }
}
