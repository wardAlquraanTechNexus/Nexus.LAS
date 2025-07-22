using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonUseCases.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts
{
    public interface IPersonService: IGenericService<Person>
    {
        Task<PagingResult<Person>> GetAllPerson(GetAllPersonQuery personQuery);
        Task<PagingResult<Person>> GetAllActivePerson(GetAllActivePersonQuery personQuery);
        Task<Person> UpdatePersonAsync(Person entity);

    }
}
