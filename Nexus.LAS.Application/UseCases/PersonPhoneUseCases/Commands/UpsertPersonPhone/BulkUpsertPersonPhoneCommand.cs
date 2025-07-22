using MediatR;
using Nexus.LAS.Application.DTOs.PersonPhoneDTOs;

namespace Nexus.LAS.Application.UseCases.PersonPhoneUseCases
{
    public class BulkUpsertPersonPhoneCommand: IRequest<List<PersonPhoneDTO>>
    {
        public List<UpsertPersonPhoneCommand> Commands { get; set; }
    }
}
