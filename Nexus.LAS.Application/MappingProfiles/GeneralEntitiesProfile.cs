using AutoMapper;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentUseCases.Commands.CreateDocument;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentUseCases.Commands.UpdateDocument;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentReletedRegisterUseCases.Commands.CreateDocumentReletedRegister;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentReletedRegisterUseCases.Commands.UpdateDocumentReletedRegister;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.UpdateDocumentTracking;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.UpdateFPC;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.CreateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.UpdateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.CreateFPCsODsAction;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.UpdateFPCsODsAction;
using Nexus.LAS.Application.UseCases.NumberUseCases.NumberUseCases.Commands.CreateNumber;
using Nexus.LAS.Application.UseCases.NumberUseCases.NumberUseCases.Commands.UpdateNumber;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.MappingProfiles;

public class GeneralEntitiesProfile : Profile
{
    public GeneralEntitiesProfile()
    {
        // Document
        CreateMap<DocumentDto, Document>().ReverseMap();
        CreateMap<CreateDocumentCommand, Document>().ReverseMap();
        CreateMap<UpdateDocumentCommand, Document>().ReverseMap();

        // DocumentReletedRegister
        CreateMap<DocumentReletedRegisterDto, DocumentReletedRegister>().ReverseMap();
        CreateMap<CreateDocumentReletedRegisterCommand, DocumentReletedRegister>().ReverseMap();
        CreateMap<UpdateDocumentReletedRegisterCommand, DocumentReletedRegister>().ReverseMap();

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

        // Number
        CreateMap<CreateNumberCommand, Number>().ReverseMap();
        CreateMap<UpdateNumberCommand, Number>().ReverseMap();
    }
}