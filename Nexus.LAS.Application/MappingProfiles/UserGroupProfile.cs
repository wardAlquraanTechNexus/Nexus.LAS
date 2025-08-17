using AutoMapper;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class UserGroupProfile:Profile
    {
        public UserGroupProfile()
        {
            CreateMap<CreateUserGroupCommand, UserGroup>();
            CreateMap<UpdateUserGroupCommand, UserGroup>();
        }
    }
}
