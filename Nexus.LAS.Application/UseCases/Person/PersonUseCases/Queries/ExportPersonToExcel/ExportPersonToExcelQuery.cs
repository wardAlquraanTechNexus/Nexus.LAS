using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToExcelQuery: IRequest<ExcelDto>
    {
        public int? Id { get; set; }
        public string? SearchBy { get; set; }
    }
}
