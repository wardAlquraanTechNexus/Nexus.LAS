using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument
{
    public class EditPersonOtherDocumentHandler: IRequestHandler<EditPersonOtherDocumentCommand , int>
    {
        private readonly IPersonOtherDocumentService _personOtherDocumentService;

        public EditPersonOtherDocumentHandler(IPersonOtherDocumentService personOtherDocumentService, IMapper mapper)
        {
            _personOtherDocumentService = personOtherDocumentService;
        }

        public async Task<int> Handle(EditPersonOtherDocumentCommand command , CancellationToken cancellationToken)
        {
            var result = await _personOtherDocumentService.EditPersonOtherDocument(command);
            return result;
        }
    }
}
