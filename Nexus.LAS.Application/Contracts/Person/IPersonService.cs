using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPerson;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.Contracts
{
    public interface IPersonService: IGenericService<Person>
    {
        Task<PagingResult<Person>> GetAllPerson(GetAllPersonQuery personQuery);
        Task<PagingResult<Person>> GetAllActivePerson(GetAllActivePersonQuery personQuery);
        Task<Person> UpdatePersonAsync(Person entity);
        Task<int> BulkChangeStatus(List<int> personIds, int status);
        Task<int> BulkChangePrivate(List<int> personIds, bool isPrivate);

    }
}
