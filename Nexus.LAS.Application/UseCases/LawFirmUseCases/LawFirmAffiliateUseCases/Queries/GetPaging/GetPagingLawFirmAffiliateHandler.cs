using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmAffiliateHandler : GetBasePagingHandler<LawFirmAffiliateDto, LawFirmAffiliate, GetPagingLawFirmAffiliateQuery, ILawFirmAffiliateService>
    {
        public GetPagingLawFirmAffiliateHandler(ILawFirmAffiliateService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}