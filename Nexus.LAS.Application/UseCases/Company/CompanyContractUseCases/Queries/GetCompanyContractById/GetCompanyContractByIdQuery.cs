using MediatR;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetCompanyContractById
{
    public class GetCompanyContractByIdQuery: IRequest<CompanyContractDto?>
    {
        public int Id { get; set; }
    }
}
