using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase
{
    public class SearchAllBaseQuery<DTO> : IRequest<List<DTO>>
    {
    }
}
