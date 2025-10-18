using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.SearchUseCases
{
    public class GetGlobalExpiredDocumentQuery: BaseParams , IRequest<PagingResult<GlobalDocumentExpiredDto>>
    {
        public string OrderBy { get; set; } = "CreatedAt";
        public string OrderDir { get; set; } = "desc";
    }
}
