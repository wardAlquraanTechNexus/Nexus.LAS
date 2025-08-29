using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetCompanyContractById
{
    public class GetCompanyContractByIdHandler : IRequestHandler<GetCompanyContractByIdQuery, CompanyContractDto?>
    {
        private readonly ICompanyContractService _service;

        public GetCompanyContractByIdHandler(ICompanyContractService service)
        {
            _service = service;
        }

        public async Task<CompanyContractDto?> Handle(GetCompanyContractByIdQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetDTOAsync(request.Id);
        }
    }
}
