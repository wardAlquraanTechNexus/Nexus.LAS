using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.UseCases.CountryUseCases.Queries.GetCountry;

namespace Nexus.LAS.WebApi.Controllers.Lookup
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class CountriesController : ControllerBase
    {
        private readonly IMediator _mediator;

        public CountriesController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var query = Request.Query;
            var getCountryQuery = new GetCountryQuery()
            {
                query = query
            };

            return Ok(await _mediator.Send(getCountryQuery)) ;
        }
    }
}
