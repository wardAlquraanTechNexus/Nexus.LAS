using AutoMapper;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.TransactionUseCases.ExportTransactionToPdfUseCases;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.UpdateTransaction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.ExportToExcel;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetAll;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Transactions
{
    public class TransactionController : GenericController<ITransactionService, Transaction>
    {
        private readonly IMapper _mapper;
        public TransactionController(ITransactionService service, IMediator mediator, IMapper mapper) : base(service, mediator)
        {
            _mapper = mapper;
        }
        [NonAction]
        public override Task<IActionResult> GetAllByQuery()
        {
            return base.GetAllByQuery();
        }
        [HttpGet(nameof(GetAllByQuery))]
        public async Task<IActionResult> GetAll([FromQuery]GetAllTransactionQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }
        [HttpGet("{id}")]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public override async Task<IActionResult> GetById(int id)
        {
            var transaction = await _service.GetAsync(id);
            return transaction == null ? NotFound() : Ok(_mapper.Map<TransactionDto>(transaction));
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

        [HttpPut(nameof(BulkChangeStatus))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Admin)]
        public async Task<IActionResult> BulkChangeStatus([FromBody] BulkChangeTransactionStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangePrivate))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Admin)]
        public async Task<IActionResult> BulkChangePrivate([FromBody] BulkChangeTransactionPrivateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpGet(nameof(ExportToExcel))]
        public async Task<IActionResult> ExportToExcel()
        {
            var query = new ExportTransactionToExcelQuery { Query = Request.Query };
            return Ok(await _mediator.Send(query));
        }

        [HttpGet(nameof(ExportToPdf))]
        public async Task<IActionResult> ExportToPdf([FromQuery] int id)
        {
            var query = new ExportTransactionToPdfQuery() { Id = id };
            return Ok(await _mediator.Send(query));
        }
    }
}