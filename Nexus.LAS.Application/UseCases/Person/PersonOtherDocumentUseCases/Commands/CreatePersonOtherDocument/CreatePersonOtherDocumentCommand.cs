using MediatR;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument
{
    public class CreatePersonOtherDocumentCommand:IRequest<int>
    {
        public int Id { get; set; }
        public string PersonsOtherDocumentIdc { get; set; } = "POD";
        public int PersonsIdn { get; set; }
        public string DocumentType { get; set; } = null!;
        public string? DocumentDescription { get; set; }
        public IFormFile File { get; set; }

    }
}
