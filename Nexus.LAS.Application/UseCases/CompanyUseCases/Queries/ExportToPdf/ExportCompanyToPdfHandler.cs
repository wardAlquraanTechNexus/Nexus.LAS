using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.CompanyDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries
{
    public class ExportCompanyToPdfHandler : IRequestHandler<ExportCompanyToPdfQuery, ExportCompanyToPdfDto>
    {
        public readonly ICompanyService _companyService;

        public ExportCompanyToPdfHandler(ICompanyService companyService)
        {
            _companyService = companyService;
        }

        public async Task<ExportCompanyToPdfDto> Handle(ExportCompanyToPdfQuery query, CancellationToken cancellationToken)
        {
            var props = typeof(GetCompanyDto).GetProperties();
            var res = await _companyService.ExportToPdf(query.Id);
            return new ExportCompanyToPdfDto()
            {
                Data = res,
                FileName = "Company Report"
            };
        }
    }

}
