using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.UpdateTransaction;

namespace Nexus.LAS.WebApi.Controllers.Transactions
{
    public class TransactionController : GenericController<ITransactionService, Transaction>
    {
        public TransactionController(ITransactionService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingTransactionQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(Transaction entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(Transaction entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateTransaction(CreateTransactionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateTransaction(UpdateTransactionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}