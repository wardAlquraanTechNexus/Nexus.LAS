using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging
{
    public class GetCompanyLicensePagingQuery: BaseParams , IRequest<PagingResult<CompanyLicenseDto>>
    {
        public int? CompanyId { get; set; }
        public int? LicenseExpiryDatePeriod { get; set; }
        public bool? LicenseExpiryActiveReminder { get; set; }

    }
}
