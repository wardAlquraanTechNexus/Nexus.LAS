using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Commands.CreateLawFirmAffiliate
{
    public class CreateLawFirmAffiliateHandler : CreateBaseCommandHandler<LawFirmAffiliate, CreateLawFirmAffiliateCommand, ILawFirmAffiliateService>
    {
        public CreateLawFirmAffiliateHandler(ILawFirmAffiliateService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}