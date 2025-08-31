using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands
{
    public class UploadPersonImageCommandHandler:IRequestHandler<UploadPersonImageCommand , UploadImageDto>
    {
        private readonly IPersonService _personService;

        public UploadPersonImageCommandHandler(IPersonService personService)
        {
            _personService = personService;
        }

        public async Task<UploadImageDto> Handle(UploadPersonImageCommand command, CancellationToken cancellationToken)
        {
            return await _personService.UploadUserImage(command);
        }
    }
}
