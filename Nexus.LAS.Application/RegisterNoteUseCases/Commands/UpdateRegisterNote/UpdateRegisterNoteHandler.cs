using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.RegisterNoteUseCases.Commands.UpdateRegisterNote
{
    public class UpdateRegisterNoteHandler : UpdateBaseCommandHandler<RegistersNote, UpdateRegisterNoteCommand, IRegisterNoteService>
    {
        public UpdateRegisterNoteHandler(IRegisterNoteService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
