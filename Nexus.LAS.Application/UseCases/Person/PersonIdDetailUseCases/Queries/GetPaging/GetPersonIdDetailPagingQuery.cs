using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.GetPaging
{
    public class GetPersonIdDetailPagingQuery:GetBasePagingQuery<PersonIdDetailDto>
    {
        public int ? PersonsIdn { get; set; }
        public int ? DocumentType { get; set; }
        public int? ExpityDatePeriod { get; set; }
        public bool? ActiveReminder { get; set; }
    }
}
