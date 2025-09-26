using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.CreateLawFirm;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.UpdateLawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    internal class LawFirmProfile: Profile
    {
        public LawFirmProfile() 
        {
            CreateMap<LawFirm, LawFirmDto>();

            CreateMap<CreateLawFirmCommand, LawFirm>();
            CreateMap<UpdateLawFirmCommand, LawFirm>();
        
        }
    }
}
