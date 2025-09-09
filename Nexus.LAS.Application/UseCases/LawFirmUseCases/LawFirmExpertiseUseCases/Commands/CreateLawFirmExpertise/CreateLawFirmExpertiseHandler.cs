using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.CreateLawFirmExpertise
{
    public class CreateLawFirmExpertiseHandler : CreateBaseCommandHandler<LawFirmExpertise, CreateLawFirmExpertiseCommand, ILawFirmExpertiseService>
    {
        public CreateLawFirmExpertiseHandler(ILawFirmExpertiseService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}