using AutoMapper;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.CreateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.UpdateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.UpdateFPC;
using Nexus.LAS.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class FPCEntitiesProfile:Profile
    {
        public FPCEntitiesProfile()
        {
            CreateMap<FPC, FPCDto>();
            CreateMap<CreateFPCCommand , FPC>();
            CreateMap<UpdateFPCCommand , FPC>();

            CreateMap<FPCOD, FPCODDto>();
            CreateMap<CreateFPCODCommand, FPCOD>();
            CreateMap<UpdateFPCODCommand, FPCOD>();
        }
    }
}
