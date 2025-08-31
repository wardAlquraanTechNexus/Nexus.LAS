using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Commands.Create;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Commands.Update;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies
{
    public class CompanyAccountSignatoryController : GenericController<ICompanyAccountSignatoryService, CompanyAccountSignatory>
    {
        public CompanyAccountSignatoryController(ICompanyAccountSignatoryService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }


        [HttpGet]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingAcccountSignatoryQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(CompanyAccountSignatory entity)
        {
            return base.CreateAsync(entity);
        }
        [NonAction]
        public override Task<IActionResult> UpdateAsync(CompanyAccountSignatory entity)
        {
            return base.UpdateAsync(entity);
        }
        [HttpPost]
        public async Task<IActionResult> CreateCompanyAccountSignatory(CreateCompanyAccountSignatoryCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        public async Task<IActionResult> UpdateCompanyAccountSignatory(UpdateCompanyAccountSignatoryCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
    
}
