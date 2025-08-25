using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CompanyLicenseProfile : Profile
    {
        public CompanyLicenseProfile()
        {
            CreateMap<CompanyLicense, CompanyLicenseDto>();
            CreateMap<CreateCompanyLicenseCommand, CompanyLicense>();
            CreateMap<UpdateCompanyLicenseCommand, CompanyLicense>();
        }
    }
}
