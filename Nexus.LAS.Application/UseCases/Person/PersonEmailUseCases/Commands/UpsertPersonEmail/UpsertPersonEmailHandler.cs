using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonEmailUseCases
{
    public class UpsertPersonEmailHandler: IRequestHandler<BulkUpsertPersonEmailCommand, List<PersonEmailDto>>
    {
        private readonly IPersonEmailService _personEmailService;
        private readonly IMapper _mapper;
        public UpsertPersonEmailHandler(IPersonEmailService personEmailService, IMapper mapper) 
        {
            _personEmailService = personEmailService;
            _mapper = mapper;   
        }
        public async Task<List<PersonEmailDto>> Handle(BulkUpsertPersonEmailCommand command , CancellationToken cancellationToken)
        {
            var personsEmail = command.Commands.Select(cmd => _mapper.Map<PersonsEmail>(cmd)).ToList();
            var personEmailsRes = await _personEmailService.BulkUpsertAsync(personsEmail);
            return personEmailsRes.Select(e => _mapper.Map<PersonEmailDto>(e)).ToList();

        }
    }
}
