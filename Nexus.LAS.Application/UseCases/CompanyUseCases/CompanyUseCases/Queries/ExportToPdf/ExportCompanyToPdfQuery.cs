using MediatR;
using Nexus.LAS.Application.DTOs;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries
{
    public class ExportCompanyToPdfQuery:IRequest<ExportCompanyToPdfDto>
    {
        public int Id {  get; set; }
    }
}
