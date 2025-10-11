using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.ExportToPdf
{
    public class ExportFPCToPdfQuery : IRequest<ExcelDto>
    {
        public int Id { get; set; }
    }
}