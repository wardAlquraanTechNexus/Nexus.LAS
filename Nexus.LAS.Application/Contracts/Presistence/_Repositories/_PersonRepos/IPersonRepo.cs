using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPersonsByCompanyId;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos
{
    public interface IPersonRepo: IGenericRepo<Person>
    {
        Task<PagingResult<PersonDto>> GetPersons(GetPersonsQuery personQuery);
        Task<PagingResult<Person>> GetActivePersons(GetAllActivePersonQuery personQuery);
        Task<Person> UpdatePersonAsync(Person entity);
        Task<List<PersonDto>> GetAllPersons(GetPersonsQuery personQuery);
        Task<List<PersonDto>> GetAllPersonsCompany(GetAllPersonsCompanyQuery query);
    }
}
