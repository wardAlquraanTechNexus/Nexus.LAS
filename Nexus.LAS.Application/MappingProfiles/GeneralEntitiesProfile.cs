using AutoMapper;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.UpdateDocumentTracking;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.CreateFPCsODsAction;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.UpdateFPCsODsAction;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.CreateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.UpdateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.UpdateFPC;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.Entities.DocumentEntities;

namespace Nexus.LAS.Application.MappingProfiles;

public class GeneralEntitiesProfile : Profile
{
    public GeneralEntitiesProfile()
    {
    
        // DocumentTracking
        CreateMap<DocumentTrackingDto, DocumentTracking>().ReverseMap();
        CreateMap<CreateDocumentTrackingCommand, DocumentTracking>().ReverseMap();
        CreateMap<UpdateDocumentTrackingCommand, DocumentTracking>().ReverseMap();

        // FPC
        CreateMap<FPCDto, FPC>().ReverseMap();
        CreateMap<CreateFPCCommand, FPC>().ReverseMap();
        CreateMap<UpdateFPCCommand, FPC>().ReverseMap();

        // FPCsOD
        CreateMap<FPCODDto, FPCOD>().ReverseMap();
        CreateMap<CreateFPCODCommand, FPCOD>().ReverseMap();
        CreateMap<UpdateFPCODCommand, FPCOD>().ReverseMap();

        // FPCsODsAction
        CreateMap<FPCODActionDto, FPCODAction>().ReverseMap();
        CreateMap<CreateFPCsODsActionCommand, FPCODAction>().ReverseMap();
        CreateMap<UpdateFPCODActionCommand, FPCODAction>().ReverseMap();

    }
}