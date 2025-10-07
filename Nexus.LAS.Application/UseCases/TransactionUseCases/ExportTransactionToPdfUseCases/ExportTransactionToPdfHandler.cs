using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.ExportTransactionToPdfUseCases
{
    public class ExportTransactionToPdfHandler : IRequestHandler<ExportTransactionToPdfQuery, ExcelDto>
    {
        public readonly ITransactionService _service;

        public ExportTransactionToPdfHandler(ITransactionService service)
        {
            _service = service;
        }

        public async Task<ExcelDto> Handle(ExportTransactionToPdfQuery query, CancellationToken cancellationToken)
        {
            var res = await _service.ExportToPdf(query.Id);
            return new ExcelDto()
            {
                Data = res,
                FileName = "Transaction Report"
            };
        }
    }
}
