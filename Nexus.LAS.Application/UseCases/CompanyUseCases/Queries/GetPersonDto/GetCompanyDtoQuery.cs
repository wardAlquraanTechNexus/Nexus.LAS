using MediatR;
using Nexus.LAS.Application.DTOs.CompanyDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries
{
    public class GetCompanyDtoQuery:IRequest<CompanyDto>
    {
        public int Id { get; set; }
    }
}
