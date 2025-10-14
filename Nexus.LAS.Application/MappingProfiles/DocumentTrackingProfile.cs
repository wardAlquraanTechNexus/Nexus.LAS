using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.CreateDocumentTrackingAction;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.UpdateDocumentTrackingAction;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.UpdateDocumentTracking;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class DocumentTrackingProfile : AutoMapper.Profile
    {
        public DocumentTrackingProfile()
        {
            CreateMap<DocumentTracking, DocumentTrackingDto>().ReverseMap();
            CreateMap<CreateDocumentTrackingCommand, DocumentTracking>().ReverseMap();
            CreateMap<UpdateDocumentTrackingCommand, DocumentTracking>().ReverseMap();

            CreateMap<DocumentTrackingAction, DocumentTrackingActionDto>().ReverseMap();
            CreateMap<CreateDocumentTrackingActionCommand , DocumentTrackingAction>().ReverseMap();
            CreateMap<UpdateDocumentTrackingActionCommand , DocumentTrackingAction>().ReverseMap();
        }
    }
}
