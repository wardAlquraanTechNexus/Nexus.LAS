using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.ExportToPdf
{
    public class ExportPropertyToPdfHandler : IRequestHandler<ExportPropertyToPdfQuery, ExcelDto>
    {
        private readonly IPropertyService _service;

        public ExportPropertyToPdfHandler(IPropertyService service)
        {
            _service = service;
        }

        public async Task<ExcelDto> Handle(ExportPropertyToPdfQuery request, CancellationToken cancellationToken)
        {
            var data = await _service.ExportToPdf(request.Id);
            return new ExcelDto
            {
                Data = data,
                FileName = "Property Report"
            };
        }
    }
}
