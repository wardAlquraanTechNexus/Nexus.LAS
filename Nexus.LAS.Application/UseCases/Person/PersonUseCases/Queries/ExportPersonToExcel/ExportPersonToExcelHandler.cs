using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToExcelHandler:IRequestHandler<ExportPersonToExcelQuery , ExcelDto>  
    {
        private readonly IPersonService _service;
        public ExportPersonToExcelHandler(IPersonService personService)
        {
            _service = personService;
        }

        public async Task<ExcelDto> Handle(ExportPersonToExcelQuery query, CancellationToken cancellationToken)
        {
            var res = await _service.ExportToExcel(query);
            return new ExcelDto()
            {
                Data = res,
                FileName = $"Person Sheet"
            };
        }

    }
}
