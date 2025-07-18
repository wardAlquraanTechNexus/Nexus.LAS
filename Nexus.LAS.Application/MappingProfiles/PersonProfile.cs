using AutoMapper;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class PersonProfile : Profile
    {
        public PersonProfile() 
        {
            CreateMap<Person , GetAllPersonDto>();
            CreateMap<PagingResult<Person>, PagingResult<GetAllPersonDto>>();

        }
    }
}
