using AutoMapper;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.CreateProperty;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.UpdateProperty;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.CreatePropertyOwner;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.UpdatePropertyOwner;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.CreatePropertyLink;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.UpdatePropertyLink;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.CreatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.CreatePropertiesStatus;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.UpdatePropertiesStatus;

namespace Nexus.LAS.Application.MappingProfiles;

public class PropertyEntitiesProfile : Profile
{
    public PropertyEntitiesProfile()
    {
        // Property
        CreateMap<PropertyDto, Property>().ReverseMap();
        CreateMap<CreatePropertyCommand, Property>().ReverseMap();
        CreateMap<UpdatePropertyCommand, Property>().ReverseMap();

        // PropertyOwner
        CreateMap<PropertyOwnerDto, PropertyOwner>().ReverseMap();
        CreateMap<CreatePropertyOwnerCommand, PropertyOwner>().ReverseMap();
        CreateMap<UpdatePropertyOwnerCommand, PropertyOwner>().ReverseMap();

        // PropertyLink
        CreateMap<PropertyLinkDto, PropertyLink>().ReverseMap();
        CreateMap<CreatePropertyLinkCommand, PropertyLink>().ReverseMap();
        CreateMap<UpdatePropertyLinkCommand, PropertyLink>().ReverseMap();

        // PropertyDocument
        CreateMap<PropertyDocumentDto, PropertyDocument>().ReverseMap();
        CreateMap<CreatePropertyDocumentCommand, PropertyDocument>().ReverseMap();
        CreateMap<UpdatePropertyDocumentCommand, PropertyDocument>().ReverseMap();

        // PropertyStatus
        CreateMap<PropertyStatusDto, PropertyStatus>().ReverseMap();
        CreateMap<CreatePropertyStatusCommand, PropertyStatus>().ReverseMap();
        CreateMap<UpdatePropertyStatusCommand, PropertyStatus>().ReverseMap();
    }
}