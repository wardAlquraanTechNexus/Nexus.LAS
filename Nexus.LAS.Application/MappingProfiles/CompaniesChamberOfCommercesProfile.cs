using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CompaniesChamberOfCommercesProfile:Profile
    {
        public CompaniesChamberOfCommercesProfile()
        {
            CreateMap<CompanyChamberOfCommerce, CompanyChamberOfCommerceDto>();
            CreateMap<CreateCompanyChamberOfCommerceCommand, CompanyChamberOfCommerce>();
            CreateMap<UpdateCompanyChamberOfCommerceCommand, CompanyChamberOfCommerce>();
   
        }
    }
}
