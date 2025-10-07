using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.ExportToExcel
{
    public class ExportFPCToExcelHandler : ExportToExcelHandler<FPC, TransactionDto, IFPCService, ExportFPCToExcelQuery>
    {
        public ExportFPCToExcelHandler(IFPCService service) : base(service)
        {
        }
    }
}