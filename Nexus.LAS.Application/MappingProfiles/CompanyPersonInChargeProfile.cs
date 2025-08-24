using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.CreateCompanyPersonInCharge;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.UpdateCompanyPersonInCharge;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CompanyPersonInChargeProfile: Profile
    {
        public CompanyPersonInChargeProfile()
        {
            CreateMap<CompanyPersonInChargeDto, CompanyPersonInCharge>();
            CreateMap<CompanyPersonInCharge,CompanyPersonInChargeDto>();
            CreateMap<CreateCompanyPersonInChargeCommand , CompanyPersonInCharge>();
            CreateMap<UpdateCompanyPersonInChargeCommand, CompanyPersonInCharge>();
        }
    }
}
