using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkActivatePerson
{
    public class BulkActivatePersonHandler : IRequestHandler<BulkActivatePersonCommand, List<PersonDto>>
    {
        private readonly IPersonService _personService;
        private readonly IMapper _mapper;

        public BulkActivatePersonHandler(IPersonService personService, IMapper mapper)
        {
            _personService = personService;
            _mapper = mapper;
        }

        public async Task<List<PersonDto>> Handle(BulkActivatePersonCommand command, CancellationToken cancellationToken)
        {
            var persons = await _personService.GetByIdsAsync(command.PersonIds);
            foreach (var person in persons)
            {
                person.IsActive = true;
            }
            await _personService.BulkUpdateAsync(persons);
            return persons.Select(p => _mapper.Map<PersonDto>(p)).ToList();
        }
    }
}