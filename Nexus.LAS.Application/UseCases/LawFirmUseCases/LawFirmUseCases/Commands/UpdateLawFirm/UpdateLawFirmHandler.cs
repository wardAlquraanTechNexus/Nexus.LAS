using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.UpdateLawFirm
{
    public class UpdateLawFirmHandler : UpdateBaseCommandHandler<LawFirm, UpdateLawFirmCommand, ILawFirmService>
    {
        public UpdateLawFirmHandler(ILawFirmService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}