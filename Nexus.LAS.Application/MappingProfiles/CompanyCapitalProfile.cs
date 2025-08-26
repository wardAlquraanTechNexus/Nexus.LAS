using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CompanyCapitalProfile : Profile
    {
        public CompanyCapitalProfile()
        {
            CreateMap<CompanyCapital, CompanyCapitalDto>();
            CreateMap<CreateCompanyCapitalCommand, CompanyCapitalDto>();
            CreateMap<UpdateCompanyCapitalCommand, CompanyCapitalDto>();
        }

    }
}
