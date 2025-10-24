using MediatR;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.ExportExpiredDocumentsToExcel
{
    public class ExportExpiredDocumentsToExcelQuery : IRequest<ExcelDto>
    {
    }
}
