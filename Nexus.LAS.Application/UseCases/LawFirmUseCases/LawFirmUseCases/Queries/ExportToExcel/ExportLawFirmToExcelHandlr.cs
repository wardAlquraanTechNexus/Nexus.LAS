using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.ExportToExcel
{
    internal class ExportLawFirmToExcelHandlr : ExportToExcelHandler<LawFirm, LawFirmDto, ILawFirmService, ExportLawFirmToExcelQuery>
    {
        public ExportLawFirmToExcelHandlr(ILawFirmService service) : base(service)
        {
        }
    }
}
