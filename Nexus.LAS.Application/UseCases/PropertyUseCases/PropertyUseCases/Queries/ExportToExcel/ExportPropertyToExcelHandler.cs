using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PropertyDTOs;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.ExportToExcel
{
    public class ExportPropertyToExcelHandler : IRequestHandler<ExportPropertyToExcelQuery, ExportPropertyToExcelDto>
    {
        private readonly IPropertyService _propertyService;

        public ExportPropertyToExcelHandler(IPropertyService propertyService)
        {
            _propertyService = propertyService;
        }

        public async Task<ExportPropertyToExcelDto> Handle(ExportPropertyToExcelQuery request, CancellationToken cancellationToken)
        {
            var props = typeof(PropertyDto).GetProperties();
            var res = await _propertyService.ExportToExcel(request.Query, props);
            return new ExportPropertyToExcelDto()
            {
                Data = res,
                FileName = "Property Sheet"
            };

        }
    }
}