using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmCounselHandler : GetBasePagingHandler<LawFirmCounselDto, LawFirmCounsel, GetPagingLawFirmCounselQuery, ILawFirmCounselService>
    {
        public GetPagingLawFirmCounselHandler(ILawFirmCounselService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}