using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Queries.GetAll
{
    public class GetAllLawFirmAffiliateHandler : GetAllBaseHandler<LawFirmAffiliateDto, LawFirmAffiliate, GetAllLawFirmAffiliateQuery, ILawFirmAffiliateService>
    {
        public GetAllLawFirmAffiliateHandler(ILawFirmAffiliateService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}