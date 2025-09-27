using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.CreateLawFirmBranch;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.UpdateLawFirmBranch;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.CreateLawFirmCounsel;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.UpdateLawFirmCounsel;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.CreateLawFirmExpertise;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.UpdateLawFirmExpertise;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.CreateLawFirmPerson;
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

            CreateMap<LawFirmPerson, LawFirmPersonDto>();
            CreateMap<CreateLawFirmPersonCommand, LawFirmPerson>();
            CreateMap<CreateLawFirmPersonCommand, LawFirmPerson>();

            CreateMap<LawFirmBranch, LawFirmBranchDto>();
            CreateMap<CreateLawFirmBranchCommand, LawFirmBranch>();
            CreateMap<UpdateLawFirmBranchCommand, LawFirmBranch>();

            CreateMap<LawFirmCounsel, LawFirmCounselDto>();
            CreateMap<CreateLawFirmCounselCommand, LawFirmCounsel>();
            CreateMap<UpdateLawFirmCounselCommand, LawFirmCounsel>();

            CreateMap<LawFirmExpertise, LawFirmExpertiseDto>();
            CreateMap<CreateLawFirmExpertiseCommand, LawFirmExpertise>();
            CreateMap<UpdateLawFirmExpertiseCommand, LawFirmExpertise>();

        }
    }
}
