using AutoMapper;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.GroupUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class GroupProfile: Profile
    {
        public GroupProfile() 
        {
            CreateMap<Group, GroupDTO>();
            CreateMap<CreateGroupCommand, Group>();
            CreateMap<UpdateGroupCommand, Group>();
        }
    }
}
