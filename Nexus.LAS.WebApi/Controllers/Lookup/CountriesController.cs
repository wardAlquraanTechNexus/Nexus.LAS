using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Lookup
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class CountriesController : GenericController<ICountryService , Country>
    {
        public CountriesController(ICountryService service, IMediator mediator) : base(service, mediator)
        {
        }

    }
}
