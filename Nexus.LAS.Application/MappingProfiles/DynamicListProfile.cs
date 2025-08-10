using AutoMapper;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using Nexus.LAS.Application.UseCases.DynamicListUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.MappingProfiles;

public class DynamicListProfile:Profile
{
    public DynamicListProfile() 
    {
        CreateMap<CreateDynamicListCommand, DynamicList>();
        CreateMap<UpdateDynamicListCommand, DynamicList>();
        CreateMap<DynamicList, DynamicListDTO>();
        CreateMap<PagingResult<DynamicList>, PagingResult<DynamicListDTO>>();
    }
}
