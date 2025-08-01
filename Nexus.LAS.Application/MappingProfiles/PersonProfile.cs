using AutoMapper;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonAddressDTOs;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using Nexus.LAS.Application.DTOs.PersonPhoneDTOs;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.EditPersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class PersonProfile : Profile
    {
        public PersonProfile() 
        {
            CreateMap<Person , GetAllPersonDto>();
            CreateMap<PagingResult<Person>, PagingResult<GetAllPersonDto>>();

            CreateMap<CreatePersonCommand, Person>();
            CreateMap<Person, CreatePersonCommand>();
            
                CreateMap<UpsertPersonEmailCommand, PersonsEmail>()
            .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));



            CreateMap<PersonsEmail, PersonEmailDto>();

            CreateMap<UpsertPersonPhoneCommand, PersonsPhone>()
            .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));


            CreateMap<PersonsAddress, PersonAddressDto>();

            CreateMap<UpsertPersonAddressCommand, PersonsAddress>()
            .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));


            CreateMap<PersonsPhone, PersonPhoneDTO>();
            CreateMap<Person, UpdatePersonCommand>();
            CreateMap<UpdatePersonCommand, Person>();

            CreateMap<PersonsIDDetail, CreatePersonIdDetailCommand>();
            CreateMap<CreatePersonIdDetailCommand, PersonsIDDetail>();
            CreateMap<PersonIdDetailDto, PersonsIDDetail>();
            CreateMap<PersonsIDDetail, PersonIdDetailDto>();
            CreateMap<CreatePersonOtherDocumentCommand, PersonsOtherDocument>();
            CreateMap<PersonsOtherDocument,CreatePersonOtherDocumentCommand>();
            CreateMap<EditPersonIdDetailCommand, PersonsIDDetail>();
            CreateMap<PersonsIDDetail, EditPersonIdDetailCommand>();
            CreateMap<PersonsOtherDocument, PersonOtherDocumentDTO>();
            CreateMap<PersonOtherDocumentDTO,PersonsOtherDocument>();
            CreateMap<EditPersonOtherDocumentCommand,PersonsOtherDocument>();
        }
    }
}
