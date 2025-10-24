using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.ExportToPdf
{
    public class ExportPropertyToPdfQuery : IRequest<ExcelDto>
    {
        public int Id { get; set; }
    }
}
