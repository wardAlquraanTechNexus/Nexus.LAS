using AutoMapper;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentReletedRegisterUseCases.Commands.CreateDocumentReletedRegister;

public class CreateDocumentReletedRegisterHandler
    : CreateBaseCommandHandler<DocumentReletedRegister, CreateDocumentReletedRegisterCommand, IDocumentReletedRegisterService>
{
    public CreateDocumentReletedRegisterHandler(
        IDocumentReletedRegisterService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}