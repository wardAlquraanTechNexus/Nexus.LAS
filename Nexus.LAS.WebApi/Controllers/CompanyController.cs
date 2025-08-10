using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries.GetAllActiveCompany;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class CompanyController : GenericController<ICompanyService, Company>
{
    public CompanyController(ICompanyService service, IMediator mediator) : base(service, mediator)
    {
    }


    [NonAction]
    public override async Task<IActionResult> GetById(int id)
    {
        var res = await _service.GetAsync(id);
        return Ok(res);

    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetCompanyDto(int id)
    {
        GetCompanyDtoQuery companyQuery = new GetCompanyDtoQuery()
        {
            Id = id
        };
        return Ok(await _mediator.Send(companyQuery));
    }


    [HttpGet(nameof(GetCompanies))]
    public async Task<IActionResult> GetCompanies([FromQuery] GetCompaniesQuery companyQuery)
    {
        return Ok(await _mediator.Send(companyQuery));
    }
    [HttpGet(nameof(GetAllActiveCompany))]
    public async Task<IActionResult> GetAllActiveCompany([FromQuery] GetActiveCompaniesQuery companyQuery)
    {
        return Ok(await _mediator.Send(companyQuery));
    }
    [HttpPost(nameof(CreateCompany))]
    public async Task<IActionResult> CreateCompany([FromBody] CreateCompanyCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
    [HttpPut(nameof(UpdateCompany))]
    public async Task<IActionResult> UpdateCompany([FromBody] UpdateCompanyCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
    [HttpPut(nameof(BulkChangeStatus))]
    public async Task<IActionResult> BulkChangeStatus([FromBody] BulkChangeCompanyStatusCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
    [HttpPut(nameof(BulkChangePrivate))]
    public async Task<IActionResult> BulkChangePrivate([FromBody] BulkChangeCompanyPrivateCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpGet(nameof(ExportToExcel))]
    public async Task<IActionResult> ExportToExcel()
    {
        var query = new GetBaseQuery<ExportCompanyToExcelDto>() { Query = Request.Query };
        return Ok(await _mediator.Send(query));
    }
    [HttpGet(nameof(ExportToPdf))]
    public async Task<IActionResult> ExportToPdf([FromQuery] int id)
    {
        var query = new ExportCompanyToPdfQuery() { Id = id };
        return Ok(await _mediator.Send(query));
    }


}
