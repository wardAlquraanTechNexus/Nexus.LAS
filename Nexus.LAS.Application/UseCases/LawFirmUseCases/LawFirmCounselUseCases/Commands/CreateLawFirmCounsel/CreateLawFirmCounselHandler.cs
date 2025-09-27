using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.CreateLawFirmCounsel
{
    public class CreateLawFirmCounselHandler : CreateBaseCommandHandler<LawFirmCounsel, CreateLawFirmCounselCommand, ILawFirmCounselService>
    {
        public CreateLawFirmCounselHandler(ILawFirmCounselService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}