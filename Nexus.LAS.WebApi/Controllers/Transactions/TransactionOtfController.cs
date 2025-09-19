using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Commands.CreateTransactionOtf;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionOtfUseCases.Commands.UpdateTransactionOtf;

namespace Nexus.LAS.WebApi.Controllers.Transactions
{
    public class TransactionOtfController : GenericController<ITransactionOtfService, TransactionOtf>
    {
        public TransactionOtfController(ITransactionOtfService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingTransactionOtfQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(TransactionOtf entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(TransactionOtf entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateTransactionOtf(CreateTransactionOtfCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateTransactionOtf(UpdateTransactionOtfCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}