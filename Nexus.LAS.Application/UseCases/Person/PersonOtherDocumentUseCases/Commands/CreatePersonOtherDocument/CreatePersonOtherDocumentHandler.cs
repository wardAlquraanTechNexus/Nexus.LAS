using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument
{
    public class CreatePersonOtherDocumentHandler: IRequestHandler<CreatePersonOtherDocumentCommand, int>
    {
        private readonly IPersonOtherDocumentService _service;
        public CreatePersonOtherDocumentHandler(IPersonOtherDocumentService personOtherDocumentService)
        {
            _service = personOtherDocumentService;
        }
        public async Task<int> Handle(CreatePersonOtherDocumentCommand request, CancellationToken cancellationToken)
        {
            return await _service.CreatePersonOtherDocument(request);
        }
    }
}
