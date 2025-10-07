using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.ExportTransactionToPdfUseCases
{
    public class ExportTransactionToPdfQuery : IRequest<ExcelDto>
    {
        public int Id { get; set; }
    }
}
