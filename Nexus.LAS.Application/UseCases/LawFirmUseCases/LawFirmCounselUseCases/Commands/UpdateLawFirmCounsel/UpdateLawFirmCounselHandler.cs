using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.UpdateLawFirmCounsel
{
    public class UpdateLawFirmCounselHandler : UpdateBaseCommandHandler<LawFirmCounsel, UpdateLawFirmCounselCommand, ILawFirmCounselService>
    {
        public UpdateLawFirmCounselHandler(ILawFirmCounselService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}