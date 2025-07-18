using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.CreatePerson.Commands
{
    public class CreatePersonHandler: IRequestHandler<CreatePersonCommand , int>
    {
        private readonly IPersonService _personService;

        public CreatePersonHandler(IPersonService personService)
        {
            _personService = personService;
        }

        public async Task<int> Handle(CreatePersonCommand command , CancellationToken cancellationToken)
        {
            string nameEn = $"{command.FirstNameEn} {command.MiddleNameEn} {command.LastNameEn}"; 
            string nameAr = $"{command.FirstNameAr} {command.MiddleNameAr} {command.LastNameAr}";
            Person person = new Person()
            {
                PersonEnglishName = nameEn,
                PersonArabicName = nameAr,
                PersonShortName = command.ShortName
            };

            return await _personService.CreateAsync(person);
        }
    }
}
