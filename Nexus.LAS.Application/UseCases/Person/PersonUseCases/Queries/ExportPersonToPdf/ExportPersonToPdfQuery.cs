using MediatR;
using Nexus.LAS.Application.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToPdfQuery:IRequest<ExportPersonToPdfDto>
    {
        public int Id {  get; set; }
    }
}
