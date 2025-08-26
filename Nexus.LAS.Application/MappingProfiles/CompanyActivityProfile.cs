using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CompanyActivityProfile: Profile
    {
        public CompanyActivityProfile() 
        {
            CreateMap<CompanyActivity ,  CompanyActivityDto>();
            CreateMap<UpdateCompanyActivityCommand, CompanyActivity>();
            CreateMap<UpdateCompanyActivityCommand, CompanyActivity>();
        }
    }
}
