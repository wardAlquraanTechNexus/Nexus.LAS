using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.UpdateLawFirmExpertise
{
    public class UpdateLawFirmExpertiseHandler : UpdateBaseCommandHandler<LawFirmExpertise, UpdateLawFirmExpertiseCommand, ILawFirmExpertiseService>
    {
        public UpdateLawFirmExpertiseHandler(ILawFirmExpertiseService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}