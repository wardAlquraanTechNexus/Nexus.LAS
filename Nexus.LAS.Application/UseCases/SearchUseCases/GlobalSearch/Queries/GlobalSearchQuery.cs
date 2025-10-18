using MediatR;
using Nexus.LAS.Application.DTOs.SearchDTOs;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries
{
    public class GlobalSearchQuery: BaseParams , IRequest<List<GlobalSearchDTO>>
    {
        public string Search { get; set; }
    }
}
