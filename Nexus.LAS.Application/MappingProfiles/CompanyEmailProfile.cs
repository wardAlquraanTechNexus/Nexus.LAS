using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyAddressDTOs;
using Nexus.LAS.Application.DTOs.CompanyEmailDTOs;
using Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.CreateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CompanyContactProfile:Profile
    {
        public CompanyContactProfile()
        {
            CreateMap<CompanyEmail, CompanyEmailDto>();
            CreateMap<CreateCompanyEmailCommand,CompanyEmail>();
            CreateMap<UpdateCompanyEmailCommand,CompanyEmail>();


            CreateMap<CompanyPhone, CompanyPhoneDto>();
            CreateMap<CreateCompanyPhoneCommand, CompanyPhone>();
            CreateMap<UpdateCompanyPhoneCommand, CompanyPhone>();

            CreateMap<CompanyAddress, CompanyAddressDto>();
            CreateMap<CreateCompanyAddressCommand, CompanyAddress>();
            CreateMap<UpdateCompanyAddressCommand, CompanyAddress>();
        }
    }
}
