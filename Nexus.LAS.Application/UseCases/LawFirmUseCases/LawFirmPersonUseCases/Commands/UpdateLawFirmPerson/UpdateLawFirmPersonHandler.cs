using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.UpdateLawFirmPerson
{
    public class UpdateLawFirmPersonHandler : UpdateBaseCommandHandler<LawFirmPerson, UpdateLawFirmPersonCommand, ILawFirmPersonService>
    {
        public UpdateLawFirmPersonHandler(ILawFirmPersonService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}