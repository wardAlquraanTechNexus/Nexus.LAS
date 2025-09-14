using AutoMapper;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentReletedRegisterUseCases.Commands.UpdateDocumentReletedRegister;

public class UpdateDocumentReletedRegisterHandler
    : UpdateBaseCommandHandler<DocumentReletedRegister, UpdateDocumentReletedRegisterCommand, IDocumentReletedRegisterService>
{
    public UpdateDocumentReletedRegisterHandler(
        IDocumentReletedRegisterService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}