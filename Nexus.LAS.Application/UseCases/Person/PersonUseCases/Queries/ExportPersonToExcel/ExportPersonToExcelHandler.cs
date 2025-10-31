using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToExcelHandler:ExportToExcelHandler<Person , PersonDto , IPersonService , ExportPersonToExcelQuery>  
    {

        public ExportPersonToExcelHandler(IPersonService personService) : base(personService)
        {
        }

        public override async Task<ExcelDto> Handle(ExportPersonToExcelQuery query, CancellationToken cancellationToken)
        {
            var res = await _service.ExportToExcel(query.Query);
            return new ExcelDto()
            {
                Data = res,
                FileName = $"Person Sheet"
            };
        }

    }
}
