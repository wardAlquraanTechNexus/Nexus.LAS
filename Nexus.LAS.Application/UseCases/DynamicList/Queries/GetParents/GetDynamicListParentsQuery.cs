using MediatR;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.GetParents
{
    public class GetDynamicListParentsQuery : IRequest<List<DynamicListDTO>>
    {
        public int Id { get; set; }
    }
}
