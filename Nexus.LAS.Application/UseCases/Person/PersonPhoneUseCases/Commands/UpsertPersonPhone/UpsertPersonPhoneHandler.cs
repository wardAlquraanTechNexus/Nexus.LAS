using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using Nexus.LAS.Application.DTOs.PersonPhoneDTOs;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonPhoneUseCases
{
    public class UpsertPersonPhoneHandler: IRequestHandler<BulkUpsertPersonPhoneCommand , List<PersonPhoneDto>>
    {
        private readonly IPersonPhoneService _personPhoneService;
        private readonly IMapper _mapper;

        public UpsertPersonPhoneHandler(IPersonPhoneService personPhoneService, IMapper mapper)
        {
            _personPhoneService = personPhoneService;
            _mapper = mapper;
        }

        public async Task<List<PersonPhoneDto>> Handle(BulkUpsertPersonPhoneCommand command, CancellationToken cancellationToken)
        {
            var personsEmail = command.Commands.Select(cmd => _mapper.Map<PersonsPhone>(cmd)).ToList();
            var personEmailsRes = await _personPhoneService.BulkUpsertAsync(personsEmail);
            return personEmailsRes.Select(e => _mapper.Map<PersonPhoneDto>(e)).ToList();
        }
    }
}
