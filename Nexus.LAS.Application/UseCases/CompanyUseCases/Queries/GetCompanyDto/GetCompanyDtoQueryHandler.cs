using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries
{
    public class GetCompanyDtoQueryHandler:IRequestHandler<GetCompanyDtoQuery, GetCompanyDto>
    {
        private readonly ICompanyService _companyService;

        public GetCompanyDtoQueryHandler(ICompanyService companyService)
        {
            _companyService = companyService;
        }

        public async Task<GetCompanyDto> Handle(GetCompanyDtoQuery query , CancellationToken cancellationToken)
        {
            return await _companyService.GetCompanyDto(query.Id);
        }
    }
}
