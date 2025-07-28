using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument
{
    public class EditPersonOtherDocumentCommand: IRequest<int>
    {
        public int Id { get; set; }
        public int PersonsIdn { get; set; }
        public string DocumentType { get; set; } = null!;
        public string? DocumentDescription { get; set; }
    }
}
