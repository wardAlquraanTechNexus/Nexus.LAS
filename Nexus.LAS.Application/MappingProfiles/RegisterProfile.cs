using AutoMapper;
using Nexus.LAS.Application.UseCases.RegisterNoteUseCases.Commands;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class RegisterProfile:Profile
    {
        public RegisterProfile() 
        {
            CreateMap<CreateRegisterNoteCommand, RegistersNote>();
            CreateMap<UpdateRegisterNoteCommand, RegistersNote>();
        }
    }
}
