using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.CreateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.UpdateTransactionAction;

namespace Nexus.LAS.WebApi.Controllers.Transactions
{
    public class TransactionActionController : GenericController<ITransactionActionService, TransactionAction>
    {
        public TransactionActionController(ITransactionActionService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingTransactionActionQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(TransactionAction entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(TransactionAction entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateTransactionAction([FromForm] CreateTransactionActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut(nameof(UpdateByForm))]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateByForm([FromForm]UpdateTransactionActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut(nameof(UpdateByBody))]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateByBody([FromBody] UpdateTransactionActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}