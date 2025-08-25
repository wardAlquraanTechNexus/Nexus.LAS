using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging
{
    public class GetCompanyLicensePagingHandler : IRequestHandler<GetCompanyLicensePagingQuery, PagingResult<CompanyLicenseDto>>
    {
        private readonly ICompanyLicenseService _service;
        private readonly IMapper _mapper;

        public GetCompanyLicensePagingHandler(ICompanyLicenseService companyLicenseService , IMapper mapper)
        {
            _service = companyLicenseService;
            _mapper = mapper;
        }

        public async Task<PagingResult<CompanyLicenseDto>> Handle(GetCompanyLicensePagingQuery request, CancellationToken cancellationToken)
        {
            var data = await _service.GetPaging(request);

            return new PagingResult<CompanyLicenseDto>(data.Collection.Select(x=> _mapper.Map<CompanyLicenseDto>(x)).ToList(), data.Page, data.PageSize, data.TotalRecords);
        }
    }
}
