using AutoMapper;
using Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class GroupMenuProfile:Profile
    {
        public GroupMenuProfile()
        {
            CreateMap<CreateGroupMenuCommand, GroupMenu>();
            CreateMap<UpdateGroupMenuCommand, GroupMenu>();
        }
    }
}
