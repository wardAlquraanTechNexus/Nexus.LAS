using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.DTOs.SearchDTOs;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Nexus.LAS.WebApi.Controllers.Search
{
    [ApiController]
    [Route("api/[controller]")]
    public class SearchController : ControllerBase
    {
        private readonly IMediator _mediator;

        public SearchController(IMediator mediator)
        {
            _mediator = mediator;
        }

        // GET api/search/global?search=term&page=1&pageSize=20
        [HttpGet("global")]
        public async Task<ActionResult<List<GlobalSearchDTO>>> Global([FromQuery]GlobalSearchQuery query)
        {
            var result = await _mediator.Send(query);
            return Ok(result);
        }
    }
}