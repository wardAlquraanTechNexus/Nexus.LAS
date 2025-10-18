using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.SearchUseCases;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;

namespace Nexus.LAS.WebApi.Controllers.Search
{
    [ApiController]
    [Route("api/[controller]")]
    public class GlobalController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IGlobalRepo _globalRepo;

        public GlobalController(IMediator mediator, IGlobalRepo globalRepo)
        {
            _mediator = mediator;
            _globalRepo = globalRepo;
        }

        // GET api/search/global?search=term&page=1&pageSize=20
        [HttpGet("GlobalSearch")]
        public async Task<IActionResult> Global([FromQuery]GlobalSearchQuery query)
        {
            var result = await _mediator.Send(query);
            return Ok(result);
        }
        [HttpGet("GlobalInfo")]
        public async Task<IActionResult> GlobalInfo()
        {
            return Ok(await _globalRepo.GlobalInfo());
        }
        [HttpGet("GlobalDocumentExpired")]
        public async Task<IActionResult> GlobalDocumentExpired([FromQuery]GetGlobalExpiredDocumentQuery query)
        {
            return Ok(await _globalRepo.GlobalDocumentExpired(query));
        }
    }
}