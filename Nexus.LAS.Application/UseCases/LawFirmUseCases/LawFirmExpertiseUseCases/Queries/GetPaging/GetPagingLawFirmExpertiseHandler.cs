using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmExpertiseHandler : GetBasePagingHandler<LawFirmExpertiseDto, LawFirmExpertise, GetPagingLawFirmExpertiseQuery, ILawFirmExpertiseService>
    {
        public GetPagingLawFirmExpertiseHandler(ILawFirmExpertiseService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}