using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToExcelHandler:IRequestHandler<GetBaseQuery<ExportPersonToExcelDto> , ExportPersonToExcelDto>  
    {
        public readonly IPersonService _personService;

        public ExportPersonToExcelHandler(IPersonService personService)
        {
            _personService = personService;
        }

        public async Task<ExportPersonToExcelDto> Handle(GetBaseQuery<ExportPersonToExcelDto> query, CancellationToken cancellationToken)
        {
            var props = typeof(GetPersonsDto).GetProperties();
            var res = await _personService.ExportToExcel(query.Query, props);
            return new ExportPersonToExcelDto()
            {
                Data = res,
                FileName = "Person Sheet"
            };
        }
    }
}
