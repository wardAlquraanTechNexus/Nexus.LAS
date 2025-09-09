using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.CreateLawFirm
{
    public class CreateLawFirmHandler : CreateBaseCommandHandler<LawFirm, CreateLawFirmCommand, ILawFirmService>
    {
        public CreateLawFirmHandler(ILawFirmService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}