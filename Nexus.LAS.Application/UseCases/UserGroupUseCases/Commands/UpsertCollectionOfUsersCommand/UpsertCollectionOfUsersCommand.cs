using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands
{
    public class UpsertCollectionOfUsersCommand: IRequest<bool>
    {
        public int GroupId { get; set; }
        public List<UpsertUserCommand> Users { get; set; }
    }


    public class UpsertUserCommand
    {
        public int Id { get; set; }
        public bool IsChecked { get; set; }
    }
}
