using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.CreateLawFirmPerson
{
    public class CreateLawFirmPersonHandler : CreateBaseCommandHandler<LawFirmPerson, CreateLawFirmPersonCommand, ILawFirmPersonService>
    {
        public CreateLawFirmPersonHandler(ILawFirmPersonService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}