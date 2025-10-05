using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.CreateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.WebApi.Controllers.Transactions
{
    public class TransactionInvoiceController : GenericController<ITransactionInvoiceService, TransactionInvoice>
    {
        public TransactionInvoiceController(ITransactionInvoiceService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingTransactionInvoiceQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(TransactionInvoice entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(TransactionInvoice entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateTransactionInvoice(CreateTransactionInvoiceCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPost(nameof(CreateByForm))]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateByForm([FromForm]CreateTransactionInvoiceCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut(nameof(UpdateByForm))]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateByForm([FromForm]UpdateTransactionInvoiceCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}