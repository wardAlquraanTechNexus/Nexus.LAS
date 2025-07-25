using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonIdDetailsController : GenericController<IPersonIdDetailService, PersonsIDDetail>
    {
        public PersonIdDetailsController(IPersonIdDetailService service, IMediator mediator) : base(service, mediator)
        {
        }
    }
}
