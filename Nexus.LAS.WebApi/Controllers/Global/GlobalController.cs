using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyUseCases.Queries.ExportToExcel;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries;
using Nexus.LAS.Application.UseCases.SearchUseCases;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;

namespace Nexus.LAS.WebApi.Controllers.Search
{
    [ApiController]
    [Route("api/[controller]")]
    public class GlobalController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IGlobalService _service;

        public GlobalController(IMediator mediator, IGlobalService service)
        {
            _mediator = mediator;
            _service = service;
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
            return Ok(await _service.GlobalInfo());
        }
        [HttpGet("GlobalDocumentExpired")]
        public async Task<IActionResult> GlobalDocumentExpired([FromQuery]GetGlobalExpiredDocumentQuery query)
        {
            return Ok(await _service.GlobalDocumentExpired(query));
        }

        [HttpGet(nameof(ExportToExcel))]
        public async Task<IActionResult> ExportToExcel()
        {
            var query = new ExportExpiredDocumentsToExcelQuery();
            return Ok(await _mediator.Send(query));
        }


    }
}