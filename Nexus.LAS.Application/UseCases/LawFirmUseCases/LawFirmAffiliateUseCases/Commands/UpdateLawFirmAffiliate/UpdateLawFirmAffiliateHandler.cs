using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Commands.UpdateLawFirmAffiliate
{
    public class UpdateLawFirmAffiliateHandler : UpdateBaseCommandHandler<LawFirmAffiliate, UpdateLawFirmAffiliateCommand, ILawFirmAffiliateService>
    {
        public UpdateLawFirmAffiliateHandler(ILawFirmAffiliateService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}