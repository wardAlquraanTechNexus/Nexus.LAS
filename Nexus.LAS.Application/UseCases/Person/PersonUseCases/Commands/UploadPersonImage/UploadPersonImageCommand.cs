using MediatR;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands
{
    public class UploadPersonImageCommand:IRequest<UploadImageDto>
    {
        public IFormFile File { get; set; }
        public int PersonId { get; set; }
    }
}
