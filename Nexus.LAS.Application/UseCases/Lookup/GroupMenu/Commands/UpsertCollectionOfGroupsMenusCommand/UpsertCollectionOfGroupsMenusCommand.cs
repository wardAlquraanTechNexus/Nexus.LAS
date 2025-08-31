using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Commands
{
    public class UpsertCollectionOfGroupsMenusCommand : IRequest<bool>
    {
        public int GroupId { get; set; }
        public List<UpsertMenuCommand> Menus { get; set; }
    }


    public class UpsertMenuCommand
    {
        public int Id { get; set; }
        public bool CanInsert { get; set; }
        public bool CanUpdate { get; set; }
        public bool CanDelete { get; set; }
        public bool Access { get; set; }
        public bool Admin { get; set; }
        public bool IsChecked { get; set; }
    }
}
