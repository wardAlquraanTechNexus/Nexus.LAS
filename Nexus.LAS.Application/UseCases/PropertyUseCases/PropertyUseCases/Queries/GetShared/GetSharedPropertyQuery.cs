using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetShared
{
    public class GetSharedPropertyQuery : GetBasePagingQuery<SharedPropertyDTO>
    {
        public string Idc { get; set; }
        public int Idn { get; set; }

    }
}
