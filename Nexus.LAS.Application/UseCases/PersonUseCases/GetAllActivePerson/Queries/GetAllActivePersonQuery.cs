using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.GetAllActivePerson
{
    public class GetAllActivePersonQuery : BaseParams, IRequest<PagingResult<GetAllPersonDto>>
    {
        public string? SearchBy { get; set; }
        public string? Nationality { get; set; }
        public bool? Private { get; set; }
    }
}
