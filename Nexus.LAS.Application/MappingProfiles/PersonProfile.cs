using AutoMapper;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using Nexus.LAS.Application.DTOs.PersonPhoneDTOs;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases;
using Nexus.LAS.Application.UseCases.PersonUseCases.UpdatePerson.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class PersonProfile : Profile
    {
        public PersonProfile() 
        {
            CreateMap<Person , GetAllPersonDto>();
            CreateMap<PagingResult<Person>, PagingResult<GetAllPersonDto>>();

            CreateMap<UpsertPersonEmailCommand, PersonsEmail>()
            .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

            CreateMap<PersonsEmail, PersonEmailDto>();

            CreateMap<UpsertPersonPhoneCommand, PersonsPhone>()
            .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

            CreateMap<PersonsPhone, PersonPhoneDTO>();
            CreateMap<Person, UpdatePersonCommand>();
            CreateMap<UpdatePersonCommand, Person>();

        }
    }
}
