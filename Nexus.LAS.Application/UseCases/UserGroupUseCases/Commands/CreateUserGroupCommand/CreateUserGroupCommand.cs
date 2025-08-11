using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands
{
    public class CreateUserGroupCommand : CreateBaseCommand
    {
        public int UserId { get; set; }
        public int GroupId { get; set; }
    }
}
