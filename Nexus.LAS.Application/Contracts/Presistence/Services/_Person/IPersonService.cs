using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.Contracts.Presistence;

public interface IPersonService: IGenericService<Person>
{
    Task<PagingResult<Person>> GetPersons(GetPersonsQuery personQuery);
    Task<List<Person>> GetAllPersons(GetAllPersonsQuery personQuery);
    Task<PagingResult<Person>> GetActivePersons(GetAllActivePersonQuery personQuery);
    Task<Person> UpdatePersonAsync(Person entity);
    Task<int> BulkChangeStatus(List<int> personIds, int status);
    Task<int> BulkChangePrivate(List<int> personIds, bool isPrivate);
    Task<bool> IsPersonEnglishNameUniqueAsync(string personEnglishName, int? excludeId = null);
    Task<bool> IsPersonArabicNameUniqueAsync(string personArabicName, int? excludeId = null);
    Task<bool> IsPersonShortNameUniqueAsync(string personShortName, int? excludeId = null);
    Task<byte[]> ExportToPdf(int id);
    Task<UploadImageDto> UploadUserImage(UploadPersonImageCommand command);
    Task<PersonDto> GetPersonDto(int id);
}
