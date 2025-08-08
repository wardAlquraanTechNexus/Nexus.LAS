using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class CompanyController : GenericController<ICompanyService, Company>
    {
        public CompanyController(ICompanyService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(Company entity)
        {
            return base.CreateAsync(entity);
        }
        [HttpPost]
        public async Task<IActionResult> CreateUseCase(CreateCompanyCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(Company entity)
        {
            return base.UpdateAsync(entity);
        }
        [HttpPut]
        public async Task<IActionResult> UpdateUseCase(UpdateCompanyCommand command)
        {
            await _mediator.Send(command);
            return Ok();
        }
    }
}
