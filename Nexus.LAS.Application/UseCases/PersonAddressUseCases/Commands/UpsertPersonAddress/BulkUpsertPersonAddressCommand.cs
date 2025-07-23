using MediatR;
using Nexus.LAS.Application.DTOs.PersonAddressDTOs;
using Nexus.LAS.Application.DTOs.PersonPhoneDTOs;

namespace Nexus.LAS.Application.UseCases.PersonAddressUseCases
{
    public class BulkUpsertPersonAddressCommand: IRequest<List<PersonAddressDto>>
    {
        public List<UpsertPersonAddressCommand> Commands { get; set; }
    }
}
