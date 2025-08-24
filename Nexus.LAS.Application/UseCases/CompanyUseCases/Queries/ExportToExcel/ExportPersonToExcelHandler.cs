using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries
{
    public class ExportCompanyToExcelHandler:IRequestHandler<GetBaseQuery<ExportCompanyToExcelDto> , ExportCompanyToExcelDto>  
    {
        public readonly ICompanyService _companyService;

        public ExportCompanyToExcelHandler(ICompanyService companyService)
        {
            _companyService = companyService;
        }

        public async Task<ExportCompanyToExcelDto> Handle(GetBaseQuery<ExportCompanyToExcelDto> query, CancellationToken cancellationToken)
        {
            var props = typeof(GetCompanyDto).GetProperties();
            var res = await _companyService.ExportToExcel(query.Query, props);
            return new ExportCompanyToExcelDto()
            {
                Data = res,
                FileName = "Company Sheet"
            };
        }
    }
}
