using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonsController : GenericController<IPersonService, Person>
    {
        public PersonsController(IPersonService service, IMediator mediator) : base(service, mediator)
        {
        }


        [NonAction]
        public override async Task<IActionResult> GetById(int id)
        {
            var res = await _service.GetAsync(id);
            return Ok(res);

        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetPersonDto(int id)
        {
            GetPersonDtoQuery personQuery = new GetPersonDtoQuery()
            {
                Id = id
            };
            return Ok(await _mediator.Send(personQuery));
        }

        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        [HttpGet(nameof(GetPersons))]
        public async Task<IActionResult> GetPersons([FromQuery]GetPersonsQuery personQuery)
        {
            return Ok(await _mediator.Send(personQuery));
        }
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        [HttpGet(nameof(GetAllPersons))]
        public async Task<IActionResult> GetAllPersons([FromQuery]GetAllPersonsQuery personQuery)
        {
            return Ok(await _mediator.Send(personQuery));
        }
        [HttpGet(nameof(GetAllActivePerson))]
        public async Task<IActionResult> GetAllActivePerson([FromQuery]GetAllActivePersonQuery personQuery)
        {
            return Ok(await _mediator.Send(personQuery));
        }
        [NonAction]
        public override Task<IActionResult> UpdateAsync(Person entity)
        {
            return base.UpdateAsync(entity);
        }
        [HttpPost]
        public async Task<IActionResult> CreatePerson([FromBody]CreatePersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [NonAction]
        public override Task<IActionResult> CreateAsync(Person entity)
        {
            return base.CreateAsync(entity);
        }
        [HttpPut]
        public async Task<IActionResult> UpdatePerson([FromBody]UpdatePersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangeStatus))]
        public async Task<IActionResult> BulkChangeStatus([FromBody]BulkChangeStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangePrivate))]
        public async Task<IActionResult> BulkChangePrivate([FromBody]BulkChangePrivateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpGet(nameof(ExportToExcel))]
        public async Task<IActionResult> ExportToExcel()
        {
            var query = new ExportPersonToExcelQuery { Query = Request.Query };
            return Ok(await _mediator.Send(query));
        }
        [HttpGet(nameof(ExportToPdf))]
        public async Task<IActionResult> ExportToPdf([FromQuery]int id)
        {
            var query = new ExportPersonToPdfQuery() { Id = id};
            return Ok(await _mediator.Send(query));
        }

        [HttpPost(nameof(UploadImage))]
        public async Task<IActionResult> UploadImage([FromForm] UploadPersonImageCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}
