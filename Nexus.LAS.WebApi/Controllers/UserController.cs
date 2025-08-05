using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class UserController : GenericController<IUserService, User>
    {
        public UserController(IUserService service, IMediator mediator) : base(service, mediator)
        {
        }

        
    }
}
