using MediatR;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.DTOs.PropertyDTOs;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.ExportToExcel
{
    public class ExportPropertyToExcelQuery : IRequest<ExportPropertyToExcelDto>
    {
        public IQueryCollection Query { get; set; }
    }
}