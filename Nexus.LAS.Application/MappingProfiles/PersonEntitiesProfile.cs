using AutoMapper;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonAddressDTOs;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using Nexus.LAS.Application.DTOs.PersonPhoneDTOs;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.CreatePersonAddress;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.UpdatePersonAddress;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.CreatePersonEmail;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.UpdatePersonEmail;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.EditPersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.CreatePersonPhone;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.UpdatePersonPhone;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.MappingProfiles;

public class PersonEntitiesProfile : Profile
{
    public PersonEntitiesProfile() 
    {
        CreateMap<Person , GetPersonsDto>();
        CreateMap<PagingResult<Person>, PagingResult<GetPersonsDto>>();

        CreateMap<CreatePersonCommand, Person>();
        CreateMap<Person, CreatePersonCommand>();
        CreateMap<Person, UpdatePersonCommand>();
        CreateMap<UpdatePersonCommand, Person>();

        // Person Email mappings (existing upsert + new create/update)
        CreateMap<UpsertPersonEmailCommand, PersonsEmail>()
        .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));
        CreateMap<CreatePersonEmailCommand, PersonsEmail>();
        CreateMap<UpdatePersonEmailCommand, PersonsEmail>();

        CreateMap<PersonsEmail, PersonEmailDto>();

        CreateMap<CreatePersonPhoneCommand, PersonsPhone>();
        CreateMap<UpdatePersonPhoneCommand, PersonsPhone>();
        CreateMap<UpsertPersonPhoneCommand, PersonsPhone>()
        .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));


        CreateMap<PersonsAddress, PersonAddressDto>();
        
        CreateMap<CreatePersonAddressCommand, PersonsAddress>();
        CreateMap<UpdatePersonAddressCommand, PersonsAddress>();
        CreateMap<UpsertPersonAddressCommand, PersonsAddress>()
        .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));


        CreateMap<PersonsPhone, PersonPhoneDto>();


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
        CreateMap<Person,PersonDto>();
    }
}
