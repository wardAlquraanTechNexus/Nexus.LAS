using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument
{
    public class EditPersonOtherDocumentHandler: IRequestHandler<EditPersonOtherDocumentCommand , int>
    {
        private readonly IPersonOtherDocumentService _personOtherDocumentService;
        private readonly IMapper _mapper;

        public EditPersonOtherDocumentHandler(IPersonOtherDocumentService personOtherDocumentService, IMapper mapper)
        {
            _personOtherDocumentService = personOtherDocumentService;
            _mapper = mapper;
        }

        public async Task<int> Handle(EditPersonOtherDocumentCommand command , CancellationToken cancellationToken)
        {
            await _personOtherDocumentService.EditPersonOtherDocument(command);
            return 1;
        }
    }
}
