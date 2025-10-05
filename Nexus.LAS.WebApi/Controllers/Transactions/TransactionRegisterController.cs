using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.UpdateTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreatePCTransactionRegister;

namespace Nexus.LAS.WebApi.Controllers.Transactions
{
    public class TransactionRegisterController : GenericController<ITransactionRegisterService, TransactionRegister>
    {
        public TransactionRegisterController(ITransactionRegisterService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingTransactionRegisterQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(TransactionRegister entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(TransactionRegister entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateTransactionRegister(CreateTransactionRegisterCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        
        [HttpPost(nameof(CreatePCTransactionRegister))]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreatePCTransactionRegister([FromBody]CreatePCTransactionRegisterCommand command)

        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateTransactionRegister(UpdateTransactionRegisterCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}