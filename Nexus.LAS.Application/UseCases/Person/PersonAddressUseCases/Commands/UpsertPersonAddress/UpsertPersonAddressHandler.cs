using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PersonAddressDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonAddressUseCases
{
    public class UpsertPersonAddressHandler: IRequestHandler<BulkUpsertPersonAddressCommand , List<PersonAddressDto>>
    {
        private readonly IPersonAddressService _personAddressService;
        private readonly IMapper _mapper;

        public UpsertPersonAddressHandler(IPersonAddressService personAddressService, IMapper mapper)
        {
            _personAddressService = personAddressService;
            _mapper = mapper;
        }

        public async Task<List<PersonAddressDto>> Handle(BulkUpsertPersonAddressCommand command, CancellationToken cancellationToken)
        {
            var personsEmail = command.Commands.Select(cmd => _mapper.Map<PersonsAddress>(cmd)).ToList();
            var personEmailsRes = await _personAddressService.BulkUpsertAsync(personsEmail);
            return personEmailsRes.Select(e => _mapper.Map<PersonAddressDto>(e)).ToList();
        }
    }
}
