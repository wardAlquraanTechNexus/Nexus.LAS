using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmHandler : GetBasePagingHandler<LawFirmDto, LawFirm, GetPagingLawFirmQuery, ILawFirmService>
    {
        public GetPagingLawFirmHandler(ILawFirmService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}