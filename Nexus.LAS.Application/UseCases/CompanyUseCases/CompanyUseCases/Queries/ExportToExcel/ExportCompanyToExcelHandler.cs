using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyUseCases.Queries.ExportToExcel;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries
{
    public class ExportCompanyToExcelHandler : ExportToExcelHandler<Company, CompanyDto, ICompanyService , ExportCompanyToExcelQuery>
    {
        public ExportCompanyToExcelHandler(ICompanyService service) : base(service)
        {
        }
    }
}
