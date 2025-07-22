using MediatR;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonEmailUseCases
{
    public class BulkUpsertPersonEmailCommand: IRequest<List<PersonEmailDto>>
    {
        public List<UpsertPersonEmailCommand> Commands { get; set; }
    }
}
