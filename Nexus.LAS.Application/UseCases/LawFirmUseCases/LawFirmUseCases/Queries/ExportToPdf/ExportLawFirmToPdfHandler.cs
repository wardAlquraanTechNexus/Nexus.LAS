using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.DTOs.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.ExportToPdf
{
    public class ExportLawFirmToPdfHandler : IRequestHandler<ExportLawFirmToPdfQuery, ExcelDto>
    {
        private readonly ILawFirmService _lawFirmService;

        public ExportLawFirmToPdfHandler(ILawFirmService lawFirmService)
        {
            _lawFirmService = lawFirmService;
        }

        public async Task<ExcelDto> Handle(ExportLawFirmToPdfQuery query, CancellationToken cancellationToken)
        {
            var data = await _lawFirmService.ExportToPdf(query.Id);
            return new ExcelDto
            {
                Data = data,
                FileName = "LawFirm Report"
            };
        }
    }
}
