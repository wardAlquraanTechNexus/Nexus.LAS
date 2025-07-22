using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.UpdatePerson.Commands
{
    public class UpdatePersonHandler: IRequestHandler<UpdatePersonCommand, GetAllPersonDto>
    {

        private readonly IPersonService _personService;
        private readonly IMapper _mapper;

        public UpdatePersonHandler(IPersonService personService, IMapper mapper)
        {
            _personService = personService;
            _mapper = mapper;
        }

        public async Task<GetAllPersonDto> Handle(UpdatePersonCommand command , CancellationToken cancellationToken)
        {
            string nameEn = $"{command.FirstNameEn} {command.MiddleNameEn} {command.LastNameEn}";
            string nameAr = $"{command.FirstNameAr} {command.MiddleNameAr} {command.LastNameAr}";
            Person person = new Person()
            {
                Id = command.Id,
                PersonEnglishName = nameEn,
                PersonArabicName = nameAr,
                PersonShortName = command.ShortName
            };
            person = await _personService.UpdatePersonAsync(person);

            return _mapper.Map<GetAllPersonDto>(person);

        }
    }
}
