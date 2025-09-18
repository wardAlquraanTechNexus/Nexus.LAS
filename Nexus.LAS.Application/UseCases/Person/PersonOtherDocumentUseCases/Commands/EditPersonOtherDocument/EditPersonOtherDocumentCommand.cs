using MediatR;
using Microsoft.AspNetCore.Http;
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
        public int? DocumentType { get; set; }
        public string? DocumentDescription { get; set; }
        public IFormFile? File { get; set; }
        public bool RemoveFile { get; set; } = false;
    }
}
