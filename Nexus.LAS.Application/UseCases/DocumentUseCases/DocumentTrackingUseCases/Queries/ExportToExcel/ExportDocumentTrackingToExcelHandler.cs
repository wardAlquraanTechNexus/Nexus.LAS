using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities.DocumentEntities;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.ExportToExcel
{

    public class ExportDocumentTrackingToExcelHandler : ExportToExcelHandler<DocumentTracking, DocumentTrackingDto, IDocumentTrackingService, ExportDocumentTrackingToExcelQuery>
    {

        public ExportDocumentTrackingToExcelHandler(IDocumentTrackingService service) : base(service)
        {
        }

    }
}
