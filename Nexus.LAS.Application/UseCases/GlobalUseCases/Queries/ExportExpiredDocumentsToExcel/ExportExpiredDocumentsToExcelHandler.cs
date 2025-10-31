using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.ExportExpiredDocumentsToExcel
{
    internal class ExportExpiredDocumentsToExcelHandler : IRequestHandler<ExportExpiredDocumentsToExcelQuery , ExcelDto>
    {
        private readonly IGlobalService _service;
        public ExportExpiredDocumentsToExcelHandler(IGlobalService service)
        {
            _service = service;
        }

        public async Task<ExcelDto> Handle(ExportExpiredDocumentsToExcelQuery request, CancellationToken cancellationToken)
        {
            var data = await _service.ExportToExcel();
            return new ExcelDto()
            {
                Data = data,
                FileName = $"LAS Sheet"
            };
        }
    }
}
