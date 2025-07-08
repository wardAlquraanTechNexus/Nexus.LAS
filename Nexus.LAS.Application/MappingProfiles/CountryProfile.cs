using AutoMapper;
using Nexus.LAS.Application.DTOs.CountryDTOs;
using Nexus.LAS.Domain.Entities.Lookup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class CountryProfile:Profile
    {
        public CountryProfile() 
        {
            CreateMap<Country, CountryDto>();
        }
    }
}
